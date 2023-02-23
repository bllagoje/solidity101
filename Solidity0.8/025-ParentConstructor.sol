// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Calling perent constructors
contract S {
    string public name;
    constructor (string memory _name) {
        name = _name;
    }
}

contract T {
    string public text;
    constructor (string memory _text) {
        text = _text;
    }
}

// Option 1
contract U is S("s"), T("t") {
  
}

// Option 2
contract V is S, T {
    constructor (string memory _name, string memory _text) S(_name) T(_text) {

    }
}
