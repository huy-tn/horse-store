pragma solidity 0.8.20;

interface IHorseStore {
    function readNumberOfHorses() external view returns (uint256);

    function updateHorseNumber(uint256 newNumberOfHorses) external;
}
