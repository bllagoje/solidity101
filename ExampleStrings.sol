//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;


contract ExampleStrings {
    string public myString = "World";
    bytes public myBytes = "World";

    function setMyString(string memory newString) public {
        myString = newString;
    }

    function compareStrings(string memory string2) public view returns(bool) {
        return keccak256(abi.encodePacked(myString)) == keccak256(abi.encodePacked(string2));
    }



}
