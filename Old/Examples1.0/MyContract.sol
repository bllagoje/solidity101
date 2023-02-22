//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract MyContract {
    // string public ourString = "Hello World";
    uint public myUInt = 123;

    // function updateOurString(string memory _updateString) public {
    //     ourString = _updateString;
    // }
    function setMyUInt(uint newUInt) public {
        myUInt = newUInt;
    }





}