# Shared Wallet solidity smart contract

The contract inherits functionality from another contract called "Allowance". 

The contract has several functions and events, including "withdrawMoney", "renounceOwnership" and "moneySent" and "moneyRecived". 

The "withdrawMoney" function allows the owner or an allowed address to withdraw a specified amount of ether from the contract's balance. 

The "renounceOwnership" function allows the owner of the contract to relinquish ownership, but it has a revert statement that prevents it from being executed. 

The contract also has a payable fallback function, which allows users to send ether to the contract's address and emits the "moneyRecived" event.
