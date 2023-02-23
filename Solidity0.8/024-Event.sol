// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    // Event
    event Log(string message, uint val);
    event IndexedLog(address indexed sender, uint val);

    function example() external {
        emit Log("Hi", 123);
        emit IndexedLog(msg.sender, 456);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata _message) external {
        emit Message(msg.sender, _to, _message);
    }

}
