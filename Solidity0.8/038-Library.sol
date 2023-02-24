// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Example 1
library Math {
    function max(uint x, uint y) internal pure returns (uint) {
        return x >= y ? x : y;
    }
}

contract Test {
    function testMax(uint _x, uint _y) external pure returns (uint) {
        return Math.max(_x, _y);
    }

}

// Example 2
library ArrayLib {
    function find(uint[] storage arr, uint x) internal view returns (uint) {
        for (uint i = 0; i < arr.length; i++) {
            if (arr[i] == x) {
                return i;
            }
        }
        revert("not found");
    }
}

contract TestArray {
    using ArrayLib for uint[];
    uint[] public arr = [3, 2, 1];

    function testFind() external view returns (uint i) {
        // return ArrayLib.find(arr, 2);
        return arr.find(2);
    }
}
