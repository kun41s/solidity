/* 
Enums restrict a variable to have one of only a few predefined values. 
The values in this enumerated list are called enums.
With the use of enums it is possible to reduce the number of bugs in your code.
*/

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.7.0 < 0.9.0;

contract Enums {
    enum FreshJuiceShop{SMALL, MEDIUM, LARGE}           //created enum called FreshJuiceShop and set values 
    FreshJuiceShop constant defaultChoice = FreshJuiceShop.MEDIUM;  //the default choice of juice size is MEDIUM
    FreshJuiceShop choice;                              

    //change size to LARGE
    function setLarge() public {
        choice = FreshJuiceShop.LARGE;
    }

    //check which size is set
    function getChoice() public view returns(FreshJuiceShop) {
        return choice;
    }

    //get default choice which is set
    function getDefaultChoice() public pure returns(uint) {
        return uint(defaultChoice);
    }

}