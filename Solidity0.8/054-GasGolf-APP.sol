// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract GasGolf {
    // Gas golf
    uint public total;
    // Input: [1, 2, 3, 4, 5, 100]

    // 1.
    // function sumIfEvenAndLessThan99(uint[] memory nums) external {
    //     for (uint i = 0; i < nums.length; i += 1) {
    //         bool isEven = nums[i] % 2 == 0;
    //         bool isLessThan99 = nums[i] < 99;
    //         if (isEven && isLessThan99) {
    //             total += nums[i];
    //         }
    //     }
    // }
    // ---------------------------------------------------------------
    // 2.
    // function sumIfEvenAndLessThan99(uint[] calldata nums) external {
    //     for (uint i = 0; i < nums.length; i += 1) {
    //         bool isEven = nums[i] % 2 == 0;
    //         bool isLessThan99 = nums[i] < 99;
    //         if (isEven && isLessThan99) {
    //             total += nums[i];
    //         }
    //     }
    // }
    // ---------------------------------------------------------------
    // 3.
    // function sumIfEvenAndLessThan99(uint[] calldata nums) external {
    //     uint _total = total;
    //     for (uint i = 0; i < nums.length; i += 1) {
    //         bool isEven = nums[i] % 2 == 0;
    //         bool isLessThan99 = nums[i] < 99;
    //         if (isEven && isLessThan99) {
    //             _total += nums[i];
    //         }
    //     }
    //     total = _total;
    // }
    // ---------------------------------------------------------------
    // 4.
    // function sumIfEvenAndLessThan99(uint[] calldata nums) external {
    //     uint _total = total;
    //     for (uint i = 0; i < nums.length; i += 1) {
    //         if (nums[i] % 2 == 0 && nums[i] < 99) {
    //             _total += nums[i];
    //         }
    //     }
    //     total = _total;
    // }
    // ---------------------------------------------------------------
    // 5.
    // function sumIfEvenAndLessThan99(uint[] calldata nums) external {
    //     uint _total = total;
    //     for (uint i = 0; i < nums.length; ++i) {
    //         if (nums[i] % 2 == 0 && nums[i] < 99) {
    //             _total += nums[i];
    //         }
    //     }
    //     total = _total;
    // }
    // ---------------------------------------------------------------
    // 6.
    // function sumIfEvenAndLessThan99(uint[] calldata nums) external {
    //     uint _total = total;
    //     uint len = nums.length;
    //     for (uint i = 0; i < len; ++i) {
    //         if (nums[i] % 2 == 0 && nums[i] < 99) {
    //             _total += nums[i];
    //         }
    //     }
    //     total = _total;
    // }
    // ---------------------------------------------------------------
    // 7.
    // function sumIfEvenAndLessThan99(uint[] calldata nums) external {
    //     uint _total = total;
    //     uint len = nums.length;
    //     for (uint i = 0; i < len; ++i) {
    //         uint num = nums[i];
    //         if (num % 2 == 0 && num < 99) {
    //             _total += num;
    //         }
    //     }
    //     total = _total;
    // }
    // ---------------------------------------------------------------

}

// ---------------------------------------------------------------
// [1, 2, 3, 4, 5, 100]
// [1] Start -                          50860 gas
// [2] Use calldata -                   49115 gas
// [3] Load state variables to memoty - 48904 gas
// [4] Short circuit -                  48586 gas
// [5] Loop increments -                48214 gas
// [6] Cache array length -             48179 gas
// [7] Load array elements to memory -  48017 gas
