//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract SendMoneyExample {
    uint public balanceRecived;

    function deposit() public payable {
        balanceRecived += msg.value;
    }

    function getContractBalance() public view returns(uint) {
        // return balanceRecived;
        return address(this).balance;
    }

    function withdrawAll() public {
        address payable to = payable(msg.sender);
        to.transfer(getContractBalance());
    }

    function withdrawToAddress(address payable to) public {
        to.transfer(getContractBalance());
    }


}