// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Ownable {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner()  {
        require(owner == msg.sender, "not owner");
        _;
    }

    function setOwner(address _newOwner) external onlyOwner {
        require(_newOwner != address(0), "invalid address");
        owner = _newOwner;
    }

    // Examples
    function onlyOwnerCanCallThisFunc() external onlyOwner {
        // code
    }

    function anyoneCanCall() external {
        // code
    }

}
