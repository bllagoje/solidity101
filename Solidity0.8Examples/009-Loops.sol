// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    // Loops
    function loops() external pure {
        // FOR loop
        for (uint i = 0; i < 10; i++) {
            if (i == 3) {
                continue;
            }

            if (i == 5) {
                break;
            }
        }

        // WHILE loop
        uint j = 0;
        while (j < 10) {
            // Code
            j++;
        }
    }

    // SUM function (sums nums from 1 to N)
    function sum(uint _n) external pure returns (uint) {
        uint s;
        for (uint i = 1; i <= _n; i++) {
            s += i;
        }
        return s;
    }

}
