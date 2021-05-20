// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Logger {
    event LogTransaction(uint256 start, uint256 end);

    function logRequest(uint256 start, uint256 end) public {
        console.log("Logging new request start: '%s', end: '%s'", start, end);
        emit LogTransaction(start, end);
    }
}
