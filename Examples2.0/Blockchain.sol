// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Blockchain {
    
    // Struct:
    struct BlockStruct {
        uint index;
        uint timestamp;
        uint amount;
        address sender;
        address recipient;
    }

    // Event create:
    event BlockEvent(uint amount, address _sender, address _recipient);

    BlockStruct[] chain;
    uint chainCounter;

    // Constructor:
    constructor() {
        chainCounter = 0;
    }

    // Function "addBlockToChain":
    function addBlockToChain(address payable _recipient, uint _amount) public {
        chainCounter++;
        
        // Push to "BlockStruct[]" array:
        chain.push(
            BlockStruct(
                chainCounter,
                block.timestamp,
                _amount,
                msg.sender,
                _recipient
            )
        );

        // Event emit:
        emit BlockEvent(_amount, msg.sender, _recipient);
    }

    // Function "getChainInfo":
    function getChainInfo() public view returns(BlockStruct[] memory) {
        return chain;
    }

    // Function "getChainCounter":
    function getChainCounter() public view returns(uint) {
        return chainCounter;
    }


}