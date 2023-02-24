// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract AbiDecode {
    // ABI decode
    struct MyStruct {
        string name;
        uint[2] nums; 
    }

    function encode(uint x, address addr, uint[] calldata arr, MyStruct calldata myStruct) external pure returns (bytes memory) {
        return abi.encode(x, addr, arr, myStruct);
    }

    function decode(bytes calldata data) external pure returns (uint x, address addr, uint[] memory arr, MyStruct memory myStruct) {
        (x, addr, arr, myStruct) = abi.decode(
            data, 
            (uint, address, uint[], MyStruct)
        );
    }
   
}


/*
ENCODE:
x: 1
addr: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
arr: [3, 4, 5]
myStruct: ["Solidity", [7, 9]]

0x00000000000000000000000000000000000000000000000000000000000000010000000000000000000000005b38da6a701c568545dcfcb03fcb875f56beddc40000000000000000000000000000000000000000000000000000000000000080000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000030000000000000000000000000000000000000000000000000000000000000003000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000050000000000000000000000000000000000000000000000000000000000000060000000000000000000000000000000000000000000000000000000000000000700000000000000000000000000000000000000000000000000000000000000090000000000000000000000000000000000000000000000000000000000000008536f6c6964697479000000000000000000000000000000000000000000000000

*/

/*
DECODE:
0: uint256: x 1
1: address: addr 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
2: uint256[]: arr 3,4,5
3: tuple(string,uint256[2]): myStruct Solidity,7,9
*/
