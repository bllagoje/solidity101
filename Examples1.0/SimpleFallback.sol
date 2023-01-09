//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract SimpleFallback {
    uint public lastValueSent;
    string public lastFunctionCalled;

    uint public myUInt;

    function setMyUInt(uint newUInt) public {
        myUInt = newUInt;
    }

    receive() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "Receive";
    }

    fallback() external payable {
        lastValueSent = msg.value;
        lastFunctionCalled = "Fallback";
    }



}