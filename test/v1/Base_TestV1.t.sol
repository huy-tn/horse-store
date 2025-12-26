// SPDX-License-Identifier: GPL-3.0-only
pragma solidity 0.8.20;

import {Test, console2} from "forge-std/Test.sol";
import {HorseStore} from "../../src/horseStoreV1/HorseStore.sol";
import {IHorseStore} from "../../src/horseStoreV1/IHorseStore.sol";

abstract contract Base_TestV1 is Test {
    IHorseStore public horseStore;

    function setUp() public virtual {
        horseStore = IHorseStore(address(new HorseStore()));
    }

    function testReadValue() public {
        uint256 initialValue = horseStore.readNumberOfHorses();
        // console2.log("Initial number of horses:", initialValue);
        assertEq(initialValue, 0);
    }

    function testWriteValue() public {
        uint256 numberOfHorses = 5;
        horseStore.updateHorseNumber(numberOfHorses);
        uint256 updatedValue = horseStore.readNumberOfHorses();
        // console2.log("Updated number of horses:", updatedValue);
        assertEq(updatedValue, numberOfHorses);
    }
}
