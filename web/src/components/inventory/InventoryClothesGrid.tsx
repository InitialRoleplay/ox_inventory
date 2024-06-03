import React from 'react';
import { Inventory } from '../../typings';
import InventoryClothesSlot from './InventoryClothesSlot';
import { useAppSelector } from '../../store';
import { imagepath } from '../../store/imagepath';

const images: Record<string, string> = {
  "clothing-1": imagepath + '/clothes/nothing/torsos.webp',
  "clothing-2": imagepath + '/clothes/nothing/tshirts.webp',
  "clothing-3": imagepath + '/clothes/nothing/hands.webp',
  "clothing-4": imagepath + '/clothes/nothing/bags.webp',
  "clothing-5": imagepath + '/clothes/nothing/armors.webp',
  "clothing-6": imagepath + '/clothes/nothing/pants.webp',
  "clothing-7": imagepath + '/clothes/nothing/shoes.webp',
  "clothing-8": imagepath + '/clothes/nothing/outfits.webp',

  "clothing-9": imagepath + '/clothes/nothing/hats.webp',
  "clothing-10": imagepath + '/clothes/nothing/masks.webp',
  "clothing-11": imagepath + '/clothes/nothing/glasses.webp',
  "clothing-12": imagepath + '/clothes/nothing/ears.webp',
  "clothing-13": imagepath + '/clothes/nothing/chains.webp',
  "clothing-14": imagepath + '/clothes/nothing/watches.webp',
  "clothing-15": imagepath + '/clothes/nothing/bracelets.webp',
  "clothing-16": imagepath + '/clothes/nothing/decals.webp',
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
