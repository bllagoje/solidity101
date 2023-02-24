// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Kill {
    // Deleting contracts

    constructor() payable {}

    function kill() external {
        selfdestruct(payable(msg.sender));
    }

    function testCall() external pure returns (uint) {
        return 1;
    }

}

contract Helper {
    function getBalance() external view returns (uint) {
        return address(this).balance;
    }

    function kill(Kill _kill) external {
        _kill.kill();
    }
    
}
