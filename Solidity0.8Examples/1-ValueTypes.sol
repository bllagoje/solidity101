// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract ValueTypes {
    // Value types
    bool public b = true;
    uint public u = 123;
    int public i = -123;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;

    address public addr = 0x5F927395213ee6b95dE97bDdCb1b2B1C0F16844F;
    bytes32 public b32 = 0x2f0fabdab6a6f0b5e7cdde08ddce341d975fe6d87870a6d5f1a5b26922467ab6;
}
