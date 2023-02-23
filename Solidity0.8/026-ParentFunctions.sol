// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

// Calling perent functions
contract E {
    event Log(string message);
    function foo() public virtual {
        emit Log("E.foo");
    }
    function bar() public virtual {
        emit Log("E.bar");
    }
}

contract F is E {
    function foo() public virtual override {
        emit Log("F.foo");
        E.foo();        // Option 1
    }
    function bar() public virtual override {
        emit Log("F.bar");
        super.bar();    // Option 2
    }
}

contract G is E {
    function foo() public virtual override {
        emit Log("G.foo");
        E.foo();        // Option 1
    }
    function bar() public virtual override {
        emit Log("G.bar");
        super.bar();    // Option 2
    }
}

contract H is F, G {
    function foo() public override(F, G) {
        F.foo();        // Option 1
    }
    function bar() public override(F, G) {
        super.bar();    // Option 2
    }
}
