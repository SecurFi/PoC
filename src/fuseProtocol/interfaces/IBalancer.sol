pragma solidity ^0.8.10;

import {IFlashLoanRecipient} from "./IFlashLoanRecipient.sol";
import {IERC20} from "./IERC20.sol";

interface IBalancer {
    function flashLoan(
        IFlashLoanRecipient recipient,
        IERC20[] memory tokens,
        uint256[] memory amounts,
        bytes memory userData
    ) external;
}
