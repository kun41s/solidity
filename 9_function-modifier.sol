/*
Function Modifiers are used to modify the behaviour of a function. 
For example to add a prerequisite to a function.

First we create a modifier with or without parameter.

contract Owner {
   modifier onlyOwner {
      require(msg.sender == owner);     //checking msg.sender is owner or not
      _;                                //if condition is true continue else fails [stops contract]
   }
}
 */


// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract Owner {
    address owner;

    //when we deploy we want to set the address to the owner (msg.sender)
    constructor() {
        owner = msg.sender;
    }

    //customize logic to modify our functions
    modifier onlyOwner {
        
        require(msg.sender == owner);  // if condition is true, function will continue else throw error
        _;     //the underscore continues with the function
    }
}

// is keyword grabbing inheritance from another contract - Owner
contract Register is Owner {
    mapping (address => bool) registeredAddress;
    uint price;

    constructor(uint initialPrice) {
        price = initialPrice;
    }

    //function register will set msg.sender (current caller) to true
    function register() public payable {
        //the logic will modify the outcome
        registeredAddress[msg.sender] = true;
    }

    //onlyOwner is our function modifier that requires only the owner to change the price 
    function changePrice(uint _price) public onlyOwner {
        price = _price;
    }
}