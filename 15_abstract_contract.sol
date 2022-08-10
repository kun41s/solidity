/*
Abstract Contract is one which contains at least one function without any implementation.
Such a contract is used as a base contract. 
Generally an abstract contract contains both implemented as well as abstract functions
Derived contract will implement the abstract function and use the existing functions as and when required.
In case, a derived contract is not implementing the abstract function then this derived contract will be marked as abstract.

*/


//SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;
  
// Creating an abstract contract
abstract contract AbstractContract {
  
    // Declaring functions
    function getStr(string memory _strIn) public virtual returns(string memory);
    function setValue(uint _in1, uint _in2) public virtual;
    function add() public virtual returns(uint);
}
  
// Child contract inheriting an abstract parent contract 'AbstractContract'
contract derivedContract is AbstractContract{
  
    // Declaring private variables
    uint private num1;
    uint private num2;
  
    // Defining functions inherited from abstract parent contract
    function getStr(string memory _strIn) public override pure returns(string memory){
        return _strIn;
    }
      
    function setValue(uint _in1, uint _in2) public override{
        num1 = _in1;
        num2 = _in2;
    }

    function add() public override view returns(uint){
        return (num2 + num1);
    }
      
}