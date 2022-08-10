/*
Inheritance is a way to extend functionality of a contract. 
Solidity supports both single as well as multiple inheritance. 
- A derived contract can access all non-private members including internal methods and state variables. But using this is not allowed.
- Function overriding is allowed provided function signature remains same. In case of difference of output parameters, compilation will fail.
- We can call a super contract's function using super keyword or using super contract name.
- In case of multiple inheritance, function call using super gives preference to most derived contract.
*/


//SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract Inheritance {
    uint innerValue = 100;

    function innerAddTen(uint val) public pure returns(uint) {
        return val + 10;
    }
}

contract B is Inheritance{
    function outerAddTen(uint _b) public pure returns(uint){
        return Inheritance.innerAddTen(_b);
    }

    function returnInnerValue() public view returns(uint) {
        return Inheritance.innerValue;
    }
}