// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    // Simple storage
    string public text;

    // calldata == less gas
    function set(string calldata _text) external {
        text = _text;
    }

    function get() external view returns (string memory) {
        return text;
    }
  
}
