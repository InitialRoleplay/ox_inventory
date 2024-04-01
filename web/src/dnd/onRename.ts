import { Slot } from '../typings';
import { fetchNui } from '../utils/fetchNui';

export const onRename = (item: Slot) => {
  fetchNui('renameItem', { slot: item.slot });
};
