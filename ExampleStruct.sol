//SPDX-License-Identifier: MIT
pragma solidity ^0.8.15;

// Wallet:
// contract Wallet {
//     PaymentRecived public payment;

//     function payContract() public payable {
//         payment = new PaymentRecived(msg.sender, msg.value);
//     }
// }
// ------------------------------------------------------------------
// Payment Recived:
// contract PaymentRecived {
//     address public from;
//     uint public amount;

//     constructor(address _from, uint _amount) {
//         from = _from;
//         amount = _amount;
//     }
// }
// ------------------------------------------------------------------
// ------------------------------------------------------------------

// Wallet 2:
contract Wallet2 {
    struct PaymentRecivedStruct {
        address from;
        uint amount;
    }

    PaymentRecivedStruct public payment;
    
    function payContract() public payable {
        // payment = PaymentRecivedStruct(msg.sender, msg.value);
        payment.from = msg.sender;
        payment.amount = msg.value; 
        
    }
}