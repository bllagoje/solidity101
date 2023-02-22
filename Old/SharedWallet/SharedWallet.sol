// SPDX-License-Identifier: MIT

pragma  solidity 0.5.13;

import "./Allowance.sol";

contract SimpleWallet is Allowance {
    // --------------------------------------------------------
    // address public owner;

    // constructor() public {
    //     owner = msg.sender;
    // }

    // modifier onlyOwner() {
    //     require(owner == msg.sender, "You are not owner.");
    //     _;
    // }
    // --------------------------------------------------------

    event moneySent(address indexed _user, uint _amount);
    event moneyRecived(address indexed _from, uint _amount);

    function withdrawMoney(address payable _to, uint _amount) public ownerOrAllowed(_amount) {
        require(_amount <= address(this).balance, "No enough funds.");
        if(!isOwner()) {
            reduceAllowance(msg.sender, _amount);
        }
        emit moneySent(_to, _amount);

        _to.transfer(_amount);
    }

    function renounceOwnership() public onlyOwner {
        revert("Can not renounce ownership.");
    }

    function () external payable {
        emit moneyRecived(msg.sender, msg.value);
    }



}

