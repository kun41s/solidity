/*
Solidity provides inbuilt cryptographic functions as well. Following are important methods −

    keccak256(bytes memory) returns (bytes32) − computes the Keccak-256 hash of the input.

    ripemd160(bytes memory) returns (bytes20) − compute RIPEMD-160 hash of the input.

    sha256(bytes memory) returns (bytes32) − computes the SHA-256 hash of the input.

    ecrecover(bytes32 hash, uint8 v, bytes32 r, bytes32 s) returns (address) − recover the address associated with the public key from elliptic curve signature or return zero on error. The function parameters correspond to ECDSA values of the signature: r - first 32 bytes of signature; s: second 32 bytes of signature; v: final 1 byte of signature. This method returns an address.
 */

//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract CrytpographicFunction {

    function hashKeccak256(uint _x, string memory name, address _add) public pure returns(bytes32) {
        return keccak256(abi.encodePacked(_x, name, _add));
    }

    function hashSha256(uint _x, string memory name, address _add) public pure returns(bytes32) {
        return sha256(abi.encodePacked(_x, name, _add));
    }


    function hashRipmd160(uint _x, string memory name, address _add) public pure returns(bytes20) {
        return ripemd160(abi.encodePacked(_x, name, _add));
    }
}

// all hash functions needs data in bytes
// encodePacked() : It encodes the data in bytes and provide it to hash functions