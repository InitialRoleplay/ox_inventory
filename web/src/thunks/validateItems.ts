import { createAsyncThunk } from '@reduxjs/toolkit';
import { setContainerWeight } from '../store/inventory';
import { fetchNui } from '../utils/fetchNui';
import { ClothesInventory } from '../typings';

export const validateMove = createAsyncThunk(
  'inventory/validateMove',
  async (
    data: {
      fromSlot: number;
      fromType: string | ClothesInventory;
      toSlot: number;
      toType: string | ClothesInventory;
      count: number;
    },
    { rejectWithValue, dispatch }
  ) => {
    try {
      const response = await fetchNui<boolean | number>('swapItems', data);

      if (response === false) return rejectWithValue(response);

      if (typeof response === 'number') dispatch(setContainerWeight(response));
    } catch (error) {
      return rejectWithValue(false);
    }
  }
);
