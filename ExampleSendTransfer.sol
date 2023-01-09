//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

// Sender:
contract Sender {

    receive() external payable {}

    function withdrawTransfer(address payable to) public {
        to.transfer(10);
    }

    function withdrawSend(address payable to) public {
        bool isSent = to.send(10);
        require(isSent, "Sending the funds was unsuccessful!");
    }
}

// ReceiveNoAction:
contract ReceiveNoAction {
    function balance() public view returns(uint) {
        return address(this).balance;
    }
    
    receive() external payable {}
}

// ReceiverAction:
contract ReceiverAction {
    uint public balanceRecived;

    receive() external payable {
        balanceRecived += msg.value;
    }

    function balance() public view returns(uint) {
        return address(this).balance;
    }
}