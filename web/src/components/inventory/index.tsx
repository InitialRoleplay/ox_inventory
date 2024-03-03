import React, { useState } from 'react';
import useNuiEvent from '../../hooks/useNuiEvent';

import Tooltip from '../utils/Tooltip';
import Fade from '../utils/transitions/Fade';

import InventoryHotbar from './InventoryHotbar';
import InventoryControl from './InventoryControl';
import InventoryContext from './InventoryContext';

import LeftInventory from './LeftInventory';
import RightInventory from './RightInventory';
import ClothesInventory from './ClothesInventory';

import { useAppDispatch } from '../../store';
import { closeTooltip } from '../../store/tooltip';
import { closeContextMenu } from '../../store/contextMenu';
import { useExitListener } from '../../hooks/useExitListener';
import { refreshSlots, setAdditionalMetadata, setupInventory } from '../../store/inventory';

import type { ClothesInventory as ClothesInventoryProps, Inventory as InventoryProps } from '../../typings';

const Inventory: React.FC = () => {
  const [inventoryVisible, setInventoryVisible] = useState(false);
  const dispatch = useAppDispatch();

  useNuiEvent<boolean>('setInventoryVisible', setInventoryVisible);
  useNuiEvent<false>('closeInventory', () => {
    setInventoryVisible(false);
    dispatch(closeContextMenu());
    dispatch(closeTooltip());
  });
  useExitListener(setInventoryVisible);

  useNuiEvent<{
    leftInventory?: InventoryProps;
    rightInventory?: InventoryProps;
    clothesInventory?: ClothesInventoryProps;
  }>('setupInventory', (data) => {
    dispatch(setupInventory(data));
    !inventoryVisible && setInventoryVisible(true);
  });

  useNuiEvent('refreshSlots', (data) => dispatch(refreshSlots(data)));

  useNuiEvent('displayMetadata', (data: Array<{ metadata: string; value: string }>) => {
    dispatch(setAdditionalMetadata(data));
  });

  return (
    <>
      <Fade in={inventoryVisible}>
        <div className="inventory-wrapper">
          <LeftInventory />
          <InventoryControl />
          <ClothesInventory />
          <RightInventory />
          <Tooltip />
          <InventoryContext />
        </div>
      </Fade>
      <InventoryHotbar />
    </>
  );
};

export default Inventory;
