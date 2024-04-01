import React from 'react';
import { Inventory } from '../../typings';
import InventoryClothesSlot from './InventoryClothesSlot';
import { useAppSelector } from '../../store';

const images: Record<string, string> = {
  "clothing-1": 'nui://ox_inventory/web/images/clothes/empty/mask.png',
  "clothing-2": 'nui://ox_inventory/web/images/clothes/empty/hoodie.png',
  "clothing-3": 'nui://ox_inventory/web/images/clothes/empty/pants.png',
  "clothing-4": 'nui://ox_inventory/web/images/clothes/empty/bag.png',
  "clothing-5": 'nui://ox_inventory/web/images/clothes/empty/hands.png',
  "clothing-6": 'nui://ox_inventory/web/images/clothes/empty/shoes.png',
  "clothing-7": 'nui://ox_inventory/web/images/clothes/empty/tshirt.png',
  "clothing-8": 'nui://ox_inventory/web/images/clothes/empty/accessories.png',
  "clothing-9": 'nui://ox_inventory/web/images/clothes/empty/body_armour.png',
  "clothing-10": 'nui://ox_inventory/web/images/clothes/empty/badge.png',
  "clothing-11": 'nui://ox_inventory/web/images/clothes/empty/nothing.png',
  "clothing-12": 'nui://ox_inventory/web/images/clothes/empty/hat.png',
  "clothing-13": 'nui://ox_inventory/web/images/clothes/empty/glasses.png',
  "clothing-14": 'nui://ox_inventory/web/images/clothes/empty/earrings.png',
  "clothing-15": 'nui://ox_inventory/web/images/clothes/empty/watch.png',
  "clothing-16": 'nui://ox_inventory/web/images/clothes/empty/bracelet.png',
  "clothing-17": 'nui://ox_inventory/web/images/clothes/empty/outfit.png',
};

const InventoryClothesGrid: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  return (
    <>
      <div className="inventory-clothes-wrapper" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
        <div className="inventory-clothes-container">
          <>
            {inventory.items.slice(0, 8).map((item) => (
              <InventoryClothesSlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
                default={images[`${inventory.type}-${item.slot}`]}
              />
            ))}
          </>
        </div>
        <div className="inventory-clothes-container">
          <>
            {inventory.items.slice(8, 16).map((item) => (
              <InventoryClothesSlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
                default={images[`${inventory.type}-${item.slot}`]}
              />
            ))}
          </>
        </div>
        <div className="inventory-clothes-outfit">
          <>
            {inventory.items.slice(16, 17).map((item, index) => (
              <InventoryClothesSlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
                default={images[`${inventory.type}-${item.slot}`]}
              />
            ))}
          </>
        </div>
      </div>
    </>
  );
};

export default InventoryClothesGrid;
