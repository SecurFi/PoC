// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;
import "forge-std/Test.sol";
import "../Exploit.sol";

contract ContractTest is Test {
    Exploit exp;

    function setUp() public {
        vm.createSelectFork("mainnet", 17007841);
    }

    function test_exploit() public {
        exp = new Exploit();
        exp.exploit();
    }
}
