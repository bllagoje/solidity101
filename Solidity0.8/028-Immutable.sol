// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    // Immutable
    // address public immutable owner = msg.sender;
    address public immutable owner;

    constructor() {
        owner = msg.sender;
    }
    
}
