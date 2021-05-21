// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Logger {
    event LogTransaction(address indexed _from, uint256 start, uint256 end);

    function logRequest(uint256 start, uint256 end) public {
        emit LogTransaction(msg.sender, start, end);
    }
}
