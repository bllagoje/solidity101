// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    // Keccak256
    function hash(string memory _text, uint _num, address _addr) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(_text, _num, _addr));
    }

    function encode(string memory _text0, string memory _text1) external pure returns (bytes memory) {
        return abi.encode(_text0, _text1);
    }
    /*
    encode() output:
    "AAA", "BBB" => 0x000000000000000000000000000000000000000000000000000000000000004000000000000000000000000000000000000000000000000000000000000000800000000000000000000000000000000000000000000000000000000000000003414141000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000034242420000000000000000000000000000000000000000000000000000000000
    */

    function encodePacked(string memory _text0, string memory _text1) external pure returns (bytes memory) {
        return abi.encodePacked(_text0, _text1);
    }
    /*
    encodePacked() output:
    "AAA", "BBB" => 0x414141424242
    */

    function collision(string memory _text0, string memory _text1) external pure returns (bytes32) {
        return keccak256(abi.encodePacked(_text0, _text1));
    }
    /*
    collision() output:
    "AAA", "ABBB" => 0x11db58448f2a53848bef361744f19e6fdabef68b8267b1ff669de1b4c42da0da
    "AAAA", "BBB" => 0x11db58448f2a53848bef361744f19e6fdabef68b8267b1ff669de1b4c42da0da
    */

}
