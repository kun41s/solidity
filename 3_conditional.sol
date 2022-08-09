// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.7.0 < 0.9.0;

/*
While writing a program, there may be a situation when you need to adopt one out of a given set of paths.
In such cases, you need to use a conditional statements that allow your program to make correct decisions and perform right actions.

if statements : The if statement is a fundamental control statement that allows
solidity to make decision and execute statements conditionally.

if..else : This statement is the next form of control statement that allows
Solidity to execute statements in a more controlled way.
*/

contract Conditional {
    uint stakingWallet = 20;

    function airDrop() public view returns(uint) {
        if (stakingWallet == 10) {          //check stakingWallet amount is equal to 10 or not
            return stakingWallet + 10;      //if stakingWallet amount is 10 then return stakingWallet + 10  //i.e 10 + 10
        } else {
            return stakingWallet + 1;       //if stakingWallet amount is not 10 then return stakingWallet + 1   i.e 10+1
        }
    }
}