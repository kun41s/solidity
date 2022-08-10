/**
Constructor is a special function declared using constructor keyword. 
It is an optional funtion and is used to initialize state variables of a contract.

- A contract can have only one constructor.
- A constructor code is executed once when a contract is created and it is used to initialize contract state.
- After a constructor code executed, the final code is deployed to blockchain. 
- This code include public functions and code reachable through public functions. 
- Constructor code or any internal method used only by constructor are not included in final code.
- A constructor can be either public or internal.
- A internal constructor marks the contract as abstract.
- In case, no constructor is defined, a default constructor is present in the contract.


contract Test {
   constructor() public {}
}

*/


pragma solidity >= 0.7.0 < 0.9.0;

contract Constructor {
    uint data;

    constructor (uint _data) {
        data = _data;
    }

    function getData() public view returns(uint) {
        return data;
    }
}


contract DerivedContract is Constructor(5) {
    function getBaseData() public view returns (uint) {
        return data;
    }
}

