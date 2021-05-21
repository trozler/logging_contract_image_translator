// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Logger {
    event LogTransaction(address indexed _from, uint256 start, uint256 end);

    function logRequest(uint256 start, uint256 end) public {
        console.log("Logging new request from: '%s', start: '%s', end: '%s'", msg.sender, start, end);
        emit LogTransaction(msg.sender, start, end);
    }
}
