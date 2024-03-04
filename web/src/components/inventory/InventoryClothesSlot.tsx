import React, { useCallback } from 'react';
import { Slot, DragSource, Inventory, InventoryType, SlotWithItem } from '../../typings';
import { useDrag, useDragDropManager, useDrop } from 'react-dnd';
import { onDrop } from '../../dnd/onDrop';
import { getItemUrl, isSlotWithClothes } from '../../helpers';
import useNuiEvent from '../../hooks/useNuiEvent';
import { ItemsPayload } from '../../reducers/refreshSlots';
import { useMergeRefs } from '@floating-ui/react';

const autorizedItem: Record<number, string> = {
  1: 'clothes_masks',
  2: 'clothes_torso',
  3: 'clothes_pants',
  4: 'clothes_bags',
  5: 'clothes_hands',
  6: 'clothes_shoes',
  7: 'clothes_access',
  8: 'clothes_tshirts',
  9: 'clothes_kevlars',
  10: 'clothes_bagdes',
  11: 'clothes_chains',
  12: 'clothes_hats',
  13: 'clothes_glasses',
  14: 'clothes_ears',
  15: 'clothes_watches',
  16: 'clothes_bracelets',
}

interface SlotProps {
  inventoryType: Inventory['type'];
  item: Slot;
  default?: string;
}

const InventorySlot: React.ForwardRefRenderFunction<HTMLDivElement, SlotProps> = ({ item, inventoryType, default: image }, ref) => {
  const manager = useDragDropManager();

  const canDrop = useCallback((source: DragSource) => {
    if (!source.item.name?.includes('clothes')) {
      return false;
    }

    if (autorizedItem[item.slot] !== source.item.name) {
      return false;
    }

    return (source.item.slot !== item.slot || source.inventory !== inventoryType) && inventoryType !== InventoryType.SHOP && inventoryType !== InventoryType.CRAFTING;
  }, [item, inventoryType]);

  const [{ isDragging }, drag] = useDrag<DragSource, void, { isDragging: boolean }>(
    () => ({
      type: 'SLOT',
      collect: (monitor) => ({
        isDragging: monitor.isDragging(),
      }),
      item: () =>
        isSlotWithClothes(item)
          ? {
            inventory: inventoryType,
            item: {
              name: item.name,
              slot: item.slot,
            },
            image: item.image || 'none',
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
        onDrop(source, { inventory: inventoryType, item: { slot: item.slot } });
      },
      canDrop,
    }),
    [inventoryType, item]
  );

  useNuiEvent('refreshClothing', (data: { items?: ItemsPayload | ItemsPayload[] }) => {
    if (!isDragging && !data.items) return;
    if (!Array.isArray(data.items)) return;
    const itemSlot = data.items.find((dataItem) => dataItem.item.slot === item.slot);
    if (!itemSlot) return;
    manager.dispatch({ type: 'dnd-core/END_DRAG' });
  });

  const connectRef = (element: HTMLDivElement) => drag(drop(element));
  const refs = useMergeRefs([connectRef, ref]);

  return (
    <div
      ref={refs}
      className="inventory-clothes-slot"
      style={{
        opacity: isDragging ? 0.4 : 1.0,
        backgroundImage: `url(${item?.name ? getItemUrl(item as SlotWithItem) : image})`,
        animation: isOver ? 'tilt-shaking 0.75s infinite' : '',
      }}
    ></div>
  );
};

export default React.memo(React.forwardRef(InventorySlot));