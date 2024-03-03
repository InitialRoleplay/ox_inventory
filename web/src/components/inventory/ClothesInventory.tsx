import { useAppSelector } from '../../store';
import { selectClothesInventory } from '../../store/inventory';
import InventoryClothesGrid from './InventoryClothesGrid';

const ClothesInventory: React.FC = () => {
  const clothesInventory = useAppSelector(selectClothesInventory);
  return <InventoryClothesGrid inventory={clothesInventory} />;
};

export default ClothesInventory;
