// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Errors {
    // Error
    // Require
    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");
    } 

    // Revert
    function testRevert(uint _i) public pure {
        if (_i < 10) {
            revert("i > 10");
        }
    }

    // Assert
    uint public num = 123;
    function testAssert() public view {
        assert(num == 123);
    }

    // Custom error
    error MyError(address caller, uint i);
    function testCustomError(uint _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }

}
