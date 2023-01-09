//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract ExampleViewPure {
    uint public myStorageVariable;

    function getMyStorageVariable() public view returns (uint) {
        return myStorageVariable;
    }

    function getAddtion(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    function setStorageVariable(uint newValue) public returns (uint) {
        myStorageVariable = newValue;
        return newValue;
    }

}