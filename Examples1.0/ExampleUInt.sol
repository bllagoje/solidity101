//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract ExampleUint {
    uint256 public myUInt; // 0 - (2^256)-1
    // int public myInt;
    uint8 public myUInt8;
    uint16 public myUInt16;
    uint32 public myUInt32;

    function setUint(uint newUInt) public {
        myUInt = newUInt;
    }

}