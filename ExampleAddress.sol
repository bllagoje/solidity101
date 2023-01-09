//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract ExampleAddress {
    address public myAddress;

    function setAddress(address newAddress) public {
        myAddress = newAddress;
    }

    function getAddressBalance() public view returns(uint) {
        return myAddress.balance;
    }

}