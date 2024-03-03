import React, { useCallback } from 'react';
import { Slot, DragSource, Inventory, InventoryType } from '../../typings';
import { useDrag, useDragDropManager, useDrop } from 'react-dnd';
import { onDrop } from '../../dnd/onDrop';
import { isSlotWithClothes } from '../../helpers';
import useNuiEvent from '../../hooks/useNuiEvent';
import { ItemsPayload } from '../../reducers/refreshSlots';
import { useMergeRefs } from '@floating-ui/react';

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

  useNuiEvent('refreshSlots', (data: { items?: ItemsPayload | ItemsPayload[] }) => {
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
        backgroundImage: `url(${item?.name ? 'https://png.pngtree.com/png-vector/20220614/ourmid/pngtree-shirt-drawing-casual-illustration-fashion-png-image_5063074.png' : image})`,
        animation: isOver ? 'tilt-shaking 0.75s infinite' : '',
      }}
    ></div>
  );
};

export default React.memo(React.forwardRef(InventorySlot));