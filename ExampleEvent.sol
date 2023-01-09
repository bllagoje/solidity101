//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract EventExample {
    mapping(address => uint) public tokenBalance;
    event TokensSent(address _from, address _to, uint _amount);

    constructor() {
        tokenBalance[msg.sender] = 100;
    }

    function sendToken(address to, uint amount) public returns(bool) {
        require(tokenBalance[msg.sender] >= amount, "Not enough tokens");
        tokenBalance[msg.sender] -= amount;
        tokenBalance[to] += amount;
        // Event emit:
        emit TokensSent(msg.sender, to, amount);

        return true;
    }



}