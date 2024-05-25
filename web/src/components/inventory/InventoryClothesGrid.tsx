import React from 'react';
import { Inventory } from '../../typings';
import InventoryClothesSlot from './InventoryClothesSlot';
import { useAppSelector } from '../../store';

const images: Record<string, string> = {
  "clothing-1": 'nui://ox_inventory/web/images/clothes/empty/torsos.webp',
  "clothing-2": 'nui://ox_inventory/web/images/clothes/empty/tshirts.webp',
  "clothing-3": 'nui://ox_inventory/web/images/clothes/empty/hands.webp',
  "clothing-4": 'nui://ox_inventory/web/images/clothes/empty/bags.webp',
  "clothing-5": 'nui://ox_inventory/web/images/clothes/empty/armors.webp',
  "clothing-6": 'nui://ox_inventory/web/images/clothes/empty/pants.webp',
  "clothing-7": 'nui://ox_inventory/web/images/clothes/empty/shoes.webp',
  "clothing-8": 'nui://ox_inventory/web/images/clothes/empty/outfits.webp',

  "clothing-9": 'nui://ox_inventory/web/images/clothes/empty/hats.webp',
  "clothing-10": 'nui://ox_inventory/web/images/clothes/empty/masks.webp',
  "clothing-11": 'nui://ox_inventory/web/images/clothes/empty/glasses.webp',
  "clothing-12": 'nui://ox_inventory/web/images/clothes/empty/ears.webp',
  "clothing-13": 'nui://ox_inventory/web/images/clothes/empty/chains.webp',
  "clothing-14": 'nui://ox_inventory/web/images/clothes/empty/watches.webp',
  "clothing-15": 'nui://ox_inventory/web/images/clothes/empty/bracelets.webp',
  "clothing-16": 'nui://ox_inventory/web/images/clothes/empty/decals.webp',
};

const InventoryClothesGrid: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  return (
    <>
      <div className="inventory-clothes-wrapper" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
        <div className="inventory-clothes-container">
          <>
            {inventory.items.slice(0, 7).map((item) => (
              <InventoryClothesSlot
                key={`${inventory.type}-${inventory.id}-${item.slot}`}
                item={item}
                inventoryType={inventory.type}
                inventoryGroups={inventory.groups}
                inventoryId={inventory.id}
                default={images[`${inventory.type}-${item.slot}`]}
              />
            ))}
            {inventory.items.slice(7, 8).map((item) => (
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
      </div>
    </>
  );
};

export default InventoryClothesGrid;
