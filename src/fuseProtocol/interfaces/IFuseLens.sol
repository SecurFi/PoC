pragma solidity ^0.8.10;
interface IFuseLens {
    function getPoolUserSummary(address comptroller, address account)
        external
        returns (uint256, uint256);
}
