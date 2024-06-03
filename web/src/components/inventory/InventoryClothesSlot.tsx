import React, { useRef } from 'react';
import { DragSource, Inventory, InventoryType, Slot, SlotWithItem } from '../../typings';
import { useDrag, useDragDropManager, useDrop } from 'react-dnd';
import { useAppDispatch } from '../../store';
import WeightBar from '../utils/WeightBar';
import { onDrop } from '../../dnd/onDrop';
import { getItemUrl, isSlotWithItem } from '../../helpers';
import useNuiEvent from '../../hooks/useNuiEvent';
import { ItemsPayload } from '../../reducers/refreshSlots';
import { closeTooltip, openTooltip } from '../../store/tooltip';
import { openContextMenu } from '../../store/contextMenu';
import { useMergeRefs } from '@floating-ui/react';

const autorizedItem: Record<number, string> = {
  1: "clothes_torsos",
  2: "clothes_tshirts",
  3: "clothes_hands",
  4: "clothes_bags",
  5: "clothes_armors",
  6: "clothes_pants",
  7: "clothes_shoes",
  8: 'clothes_outfits',

  9: "clothes_hats",
  10: "clothes_masks",
  11: "clothes_glasses",
  12: "clothes_ears",
  13: "clothes_chains",
  14: "clothes_watches",
  15: "clothes_bracelets",
  16: "clothes_decals",
}

interface SlotProps {
  inventoryId: Inventory['id'];
  inventoryType: Inventory['type'];
  inventoryGroups: Inventory['groups'];
  item: Slot;
  default?: string;
}

const InventoryClothesSlot: React.ForwardRefRenderFunction<HTMLDivElement, SlotProps> = (
  { item, inventoryId, inventoryType, default: image },
  ref
) => {
  const manager = useDragDropManager();
  const dispatch = useAppDispatch();
  const timerRef = useRef<number | null>(null);

  const [{ isDragging }, drag] = useDrag<DragSource, void, { isDragging: boolean }>(
    () => ({
      type: 'SLOT',
      collect: (monitor) => ({
        isDragging: monitor.isDragging(),
      }),
      item: () =>
        isSlotWithItem(item, inventoryType !== InventoryType.SHOP)
          ? {
            inventory: inventoryType,
            item: {
              name: item.name,
              slot: item.slot,
            },
            image: item?.name && `url(${getItemUrl(item) || 'none'}`,
          }
          : null,
    }),
    [inventoryType, item]
  );

  const [{ isOver }, drop] = useDrop<DragSource, void, { isOver: boolean }>(
    () => ({
      accept: 'SLOT',
      collect: (monitor) => ({
        isOver: monitor.isOver(),
      }),
      drop: (source) => {
        dispatch(closeTooltip());
        onDrop(source, { inventory: inventoryType, item: { slot: item.slot } });
      },
      canDrop: (source) => (source.item.slot !== item.slot || source.inventory !== inventoryType) && autorizedItem[item.slot] === source.item.name,
    }),
    [inventoryType, item]
  );

  useNuiEvent('refreshSlots', (data: { items?: ItemsPayload | ItemsPayload[] }) => {
    if (!isDragging && !data.items) return;
    if (!Array.isArray(data.items)) return;

    const itemSlot = data.items.find(
      (dataItem) => dataItem.item.slot === item.slot && dataItem.inventory === inventoryId
    );

    if (!itemSlot) return;

    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  const connectRef = (element: HTMLDivElement) => drag(drop(element));

  const handleContext = (event: React.MouseEvent<HTMLDivElement>) => {
    event.preventDefault();
    if (!isSlotWithItem(item)) return;
    dispatch(openContextMenu({ item, coords: { x: event.clientX, y: event.clientY } }));
  };

  const refs = useMergeRefs([connectRef, ref]);

  return (
    <div
      ref={refs}
      onContextMenu={handleContext}
      className="inventory-clothes-slot"
      style={{
        opacity: isDragging ? 0.4 : 1.0,
        backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : image})`,
        animation: isOver ? 'tilt-shaking 0.75s infinite' : '',
        filter: isSlotWithItem(item) ? 'opacity(100%)' : 'opacity(75%)',
      }}
    >
      {isSlotWithItem(item) && (
        <div
          className="item-clothes-slot-wrapper"
          onMouseEnter={() => {
            timerRef.current = window.setTimeout(() => {
              dispatch(openTooltip({ item, inventoryType }));
            }, 500);
          }}
          onMouseLeave={() => {
            dispatch(closeTooltip());
            if (timerRef.current) {
              clearTimeout(timerRef.current);
              timerRef.current = null;
            }
          }}
        >
          <div>
            {inventoryType !== 'shop' && item?.durability !== undefined && (
              <WeightBar percent={item.durability} durability />
            )}
          </div>
        </div>
      )}
    </div>
  );
};

export default React.memo(React.forwardRef(InventoryClothesSlot));
