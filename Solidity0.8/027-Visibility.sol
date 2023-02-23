// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    // VISIBILITY
    // private - only inside contract
    // internal - only inside contract and child contracts
    // public - inside and outside contract
    // external - only from outside contract
    uint private x = 0;
    uint internal y = 1;
    uint public z = 2;

    function privateFunc() private pure returns (uint) {}

    function internalFunc() internal pure returns (uint) {}

    function publicFunc() public pure returns (uint) {}

    function externalFunc() external pure returns (uint) {}

    function example() external view {
        x + y + z;
        privateFunc();
        internalFunc();
        publicFunc();
        // externalFunc();          // Error
        this.externalFunc();        // No error (gas inefficient)
    }
}

contract VisibilityChild is HelloWorld {
    function examples2() external view {
        y + z;
        internalFunc();
        publicFunc();
        
    }
}
