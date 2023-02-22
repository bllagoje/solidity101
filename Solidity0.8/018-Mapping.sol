// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    // Mapping
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function example() public {
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];

        balances[msg.sender] += 456;    // 123 + 456 = 579

        delete balances[msg.sender];    // 0

        isFriend[msg.sender][address(this)] = true;
    }

}
