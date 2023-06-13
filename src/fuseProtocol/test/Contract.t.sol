// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;
import "forge-std/Test.sol";
import "../FuseProtocolExploit.sol";

contract ContractTest is Test{
    FuseProtocolExploit f;

    function setUp() public {
        vm.createSelectFork("https://rpc.flashbots.net/", 14684684);
    }

    function testFuseProtocol() public {
        f = new FuseProtocolExploit();
        console.log("before in ETH", address(f).balance);
        f.exploit();
        console.log("after in ETH", address(f).balance);
    }
}