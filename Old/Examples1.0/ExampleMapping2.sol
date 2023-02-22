//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

contract ExampleMapping2 {
    mapping(address => uint) public balanceRecived;

    // Get Balance:
    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    // Send Money:
    function sendMoney() public payable {
        balanceRecived[msg.sender] += msg.value;
    }

    // Withdraw All Money:
    function withdrawAllMoney(address payable _to) public {
        uint balanceToSend = balanceRecived[msg.sender];
        balanceRecived[msg.sender] = 0;
        _to.transfer(balanceToSend);
        // _to.transfer(getBalance());
        // _to.transfer(address(this).balance);
    }

    // Withdraw Money:
    function withdrawMoney(address payable to, uint amount) public {
        require(amount <= balanceRecived[msg.sender], "Not Enough Funds");
        balanceRecived[msg.sender] -= amount;
        to.transfer(amount);
    }





}