// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    // View and Pure functions
    uint public num;

    // VIEW reads data from blockchain
    function viewFunc() external view returns (uint) {
        return num;
    }

    // PURE dones not reads data from blockchain
    function pureFunc() external pure returns (uint) {
        return 1;
    }

}
