// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

/*
0. Message to sign
1. Hash (message)
2. Sign (hash(message), private key) | offchain
3. ecrecover(hash(message)), signature) == signer
*/

contract VerifySig {
    // Verify signature
    function verify(address _signer, string memory _message, bytes memory _sig) external pure returns (bool) {
        bytes32 messageHash = getMessageHesh(_message);
        bytes32 ethSignedMessageHash = getEthSignedMessageHash(messageHash);

        return recover(ethSignedMessageHash, _sig) == _signer; 
    }

    function getMessageHesh(string memory _message) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_message));
    }

    function getEthSignedMessageHash(bytes32 _messageHash) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(
            "\x19Ethereum Signed Message:\n32",
            _messageHash
        ));
    }

    function recover(bytes32 _ethSignedMessageHash, bytes memory _sig) public pure returns (address) {
        (bytes32 r, bytes32 s, uint8 v) = _split(_sig);
        return ecrecover(_ethSignedMessageHash, v, r, s);
    }

    function _split(bytes memory _sig) internal pure returns (bytes32 r, bytes32 s, uint8 v) {
        require(_sig.length == 65, "invalid signature length");
        assembly {
            r := mload(add(_sig, 32))
            s := mload(add(_sig, 64))
            v := byte(0, mload(add(_sig, 96)))
        }
        return (r, s, v);
    }
    
}

// ethereum.enable()
// account = <account>
// hash = <hash>
// ethereum.request({method: "personal_sign", params: [account, hash]})

// 0x45acb1870e1c44972a30e7062d4ccb9d0ba5c22ddfbea1e43979884fb5b15dd7241ac0a05a5a58803d8ba67e5320e8edb2045efeb41ef9f30a1c514f6cd701b41b
