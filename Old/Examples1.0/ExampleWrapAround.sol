// SPDX-License-Identifier: MIT
// pragma solidity ^0.8.14;

// contract ExampleWrapAround {
//     uint public myUInt;
//     uint8 public myUInt8;

//     function setMyUInt(uint newUInt) public {
//         myUInt = newUInt;
//     }

//     function decrementUInt() public {
//         unchecked {
//             myUInt--;
//         }
//     }

//     function incrementUInt() public {
//         myUInt++;
//     }

// }



// pragma solidity 0.8.15;

contract ExampleWrapAround {
    uint256 public myUint;

    function decrementUintUnchecked() public {
        unchecked {
            myUint--;
        }
    }

    function decrementUint() public {
        myUint--;
    }
}