// SPDX-License-Identifier: MIT

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/be5ed7364b93daccbb74a09e3f5ec1be6c458097/contracts/ownership/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/b95d7e7f8aec6bd2a8db5e81f4e6b982ef1f7668/contracts/math/SafeMath.sol";

pragma  solidity 0.5.13;

contract Allowance is Ownable {

    using SafeMath for uint;

    event allowanceChanged(address indexed _who, address indexed _fromWho, uint _oldAmount, uint _newAmount);

    mapping(address => uint) allowance;

    function setAllowance(address _who, uint _amount) public onlyOwner {
        emit allowanceChanged(_who, msg.sender, allowance[_who], _amount);
        allowance[_who] = _amount;
    }

    modifier ownerOrAllowed(uint _amount) {
        require(isOwner() || allowance[msg.sender] >= _amount, "You are not allowed.");
        _;
    }

    function reduceAllowance(address _who, uint _amount) internal {
        // emit allowanceChanged(_who, msg.sender, allowance[_who], allowance[_who] - _amount);
        emit allowanceChanged(_who, msg.sender, allowance[_who], allowance[_who].sub(_amount));
        // allowance[_who] -= _amount;
        allowance[_who] = allowance[_who].sub(_amount);
    }

}