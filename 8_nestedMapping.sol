// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.7.0 < 0.9.0;

contract NestedMapping {
    struct Movie {
        string name;
        string directorName;
    }

    mapping(address => mapping(uint => Movie)) public myMovie;

    function setMovie(uint _id, string memory _name, string memory _directorName) public {
        myMovie[msg.sender][_id] = Movie(_name, _directorName);
    }
}



/*
Real life example for nested mapping
Approval mechanism on tokens

mapping(address => mapping(address => uint256)) approvals;

This structure is used to keep track of token approvals. 
Example: "Alice (1st address) approves Bob (2nd address) to spend 100 (uint) of her tokens".
*/