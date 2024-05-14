import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory } from '../../typings';
import InventorySlot from './InventorySlot';
import { useAppSelector } from '../../store';
import { selectLeftInventory } from '../../store/inventory';
import { useIntersection } from '../../hooks/useIntersection';

const PAGE_SIZE = 5;

const FastGrid: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const [page, setPage] = useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });

  useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);

  return (
    <>
      <div className="inventory-fast-grid" ref={containerRef}>
        <>
          {inventory.items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
            <InventorySlot
              key={`${inventory.type}-${inventory.id}-${item.slot}`}
              item={item}
              ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
              inventoryType={inventory.type}
              inventoryGroups={inventory.groups}
              inventoryId={inventory.id}
            />
          ))}
        </>
      </div>
    </>
  );
};

const FastSlots: React.FC = () => {
  const leftInventory = useAppSelector(selectLeftInventory);
  return <FastGrid inventory={leftInventory} />;
};

export default FastSlots;
