pragma solidity ^0.8.10;

interface IComptroller {
    function enterMarkets(address[] calldata fTokens)
        external returns (uint256[] memory);

    function exitMarket(address fToken) external returns (uint256);
    function getAccountLiquidity(address account) external returns (uint, uint, uint);
    function getAssetsIn(address account) external returns (address[] memory);

}
