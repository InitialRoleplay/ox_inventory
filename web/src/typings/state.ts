import { Inventory } from './inventory';

export type State = {
  leftInventory: Inventory;
  clothesInventory: Inventory;
  rightInventory: Inventory;
  itemAmount: number;
  shiftPressed: boolean;
  isBusy: boolean;
  additionalMetadata: Array<{ metadata: string; value: string }>;
  history?: {
    leftInventory: Inventory;
    clothesInventory: Inventory;
    rightInventory: Inventory;
  };
};
