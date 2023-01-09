//SPDX-License-Identifier: MIT
pragma solidity 0.8.15;

contract SampleContract {
    string public myString = "Hello World";

    function updateString(string memory newString) public payable {
        if(msg.value == 1 ether) {
            myString = newString;
        } else {
            payable(msg.sender).transfer(msg.value);
        }
        // console.log(msg.value);

    }




}