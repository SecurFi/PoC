pragma solidity ^0.8.10;

interface IFusePool {
    function mint(uint256 mintAmount) external returns (uint256);

    function redeem(uint256 redeemTokens) external returns (uint256);

    function redeemUnderlying(uint256 redeemAmount) external returns (uint256);

    function borrow(uint256 borrowAmount) external returns (uint256);

    function getCash() external returns (uint256);
}

interface IFusePoolEth {
    function mint() payable external returns (uint256);
    function redeemUnderlying(uint256 redeemAmount) external returns (uint256);
    function redeem(uint256 redeemTokens) external returns (uint256);
    function borrow(uint256 borrowAmount) external returns (uint256);
}