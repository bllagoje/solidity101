//SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

contract ExampleExceptioRequire {
    mapping(address => uint8) public balanceRecived;

    function reciveMoney() public payable {
        assert(msg.value == uint8(msg.value));
        balanceRecived[msg.sender] += uint8(msg.value);
    }

    function withdrawMoney(address payable to, uint8 amount) public {
        require(amount <= balanceRecived[msg.sender], "Not Enough funds!");
        balanceRecived[msg.sender] -= amount;
        to.transfer(amount);
        
    }

}