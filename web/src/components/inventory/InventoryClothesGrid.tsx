import React, { useRef } from 'react';
import { useAppSelector } from '../../store';
import { ClothesInventory } from '../../typings';
import { useIntersection } from '../../hooks/useIntersection';
import InventoryClothesSlot from './InventoryClothesSlot';

const images: Record<string, string> = {
  "clothes-1": 'nui://ox_inventory/web/images/clothes/empty/mask.png',
  "clothes-2": 'nui://ox_inventory/web/images/clothes/empty/hoodie.png',
  "clothes-3": 'nui://ox_inventory/web/images/clothes/empty/pants.png',
  "clothes-4": 'nui://ox_inventory/web/images/clothes/empty/bag.png',
  "clothes-5": 'nui://ox_inventory/web/images/clothes/empty/hands.png',
  "clothes-6": 'nui://ox_inventory/web/images/clothes/empty/shoes.png',
  "clothes-7": 'nui://ox_inventory/web/images/clothes/empty/masks.png',
  "clothes-8": 'nui://ox_inventory/web/images/clothes/empty/accessories.png',
  "clothes-9": 'nui://ox_inventory/web/images/clothes/empty/body_armour.png',
  "clothes-10": 'nui://ox_inventory/web/images/clothes/empty/badge.png',
  "clothes-11": 'nui://ox_inventory/web/images/clothes/empty/masks.png',
  "clothes-12": 'nui://ox_inventory/web/images/clothes/empty/hat.png',
  "clothes-13": 'nui://ox_inventory/web/images/clothes/empty/glasses.png',
  "clothes-14": 'nui://ox_inventory/web/images/clothes/empty/earrings.png',
  "clothes-15": 'nui://ox_inventory/web/images/clothes/empty/watch.png',
  "clothes-16": 'nui://ox_inventory/web/images/clothes/empty/bracelet.png',
};

const InventoryClothesGrid: React.FC<{ inventory: ClothesInventory }> = ({ inventory }) => {
  const containerRef = useRef(null);
  const ref = useRef(null);
  // const { ref } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  return (
    <>
      <div className="inventory-clothes-wrapper" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
        <div className="inventory-clothes-left" ref={containerRef}>
          <>
            {inventory.items.slice(0, 7).map((item, index) => (
              <InventoryClothesSlot
                key={`${inventory.type}-${item.slot}`}
                default={images[`${inventory.type}-${item.slot}`]}
                item={item}
                ref={ref}
                inventoryType={inventory.type}
              />
            ))}
          </>
        </div>
        <div className="inventory-clothes-right" ref={containerRef}>
          <>
            {inventory.items.slice(8, 15).map((item, index) => (
              <InventoryClothesSlot
                key={`${inventory.type}-${item.slot}`}
                default={images[`${inventory.type}-${item.slot}`]}
                item={item}
                ref={ref}
                inventoryType={inventory.type}
              />
            ))}
          </>
        </div>
      </div>
    </>
  );
};

export default InventoryClothesGrid;
