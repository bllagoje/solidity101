//SPDX-License-Identifier: MIT
pragma solidity ^0.8.14;

contract ExampleBoolean {
    bool public myBool;

    // function setMyBool(bool setBool) public {
    //     myBool = setBool;
    // }
    
    function changeMyBool() public {
        myBool = !myBool;
    }



}