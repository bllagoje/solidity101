// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract HelloWorld {
    // Call other contracts
    // Option 1
    // function setX(address _test, uint _x) external {
    //     TestContract(_test).setX(_x);
    // }
    
    // Option 2
    function setX(TestContract _test, uint _x) external {
        _test.setX(_x);
    }

    function getX(address _test) external view returns(uint) {
        uint x = TestContract(_test).getX();
        return x;
    }

    function setXandReceiveEther(TestContract _test, uint _x) external payable {
        TestContract(_test).setXandReceiveEther{ value: msg.value }(_x);
    }

    // Option 1
    // function getXandValue(address _test) external view returns(uint, uint) {
    //     (uint x, uint value) = TestContract(_test).getXandValue();
    //     return (x, value);
    // }

    // Option 2
    function getXandValue(address _test) external view returns(uint x, uint value) {
        (x, value) = TestContract(_test).getXandValue();
    }
    
}

contract TestContract {
    uint public x;
    uint public value = 123; 

    function setX(uint _x) external {
        x = _x;
    }

    function getX() external view returns(uint) {
        return x;
    }

    function setXandReceiveEther(uint _x) external payable {
        x = _x;
        value = msg.value;
    }

    function getXandValue() external view returns(uint, uint) {
        return (x, value);
    }

}
