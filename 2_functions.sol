// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.7.0 < 0.9.0;

/*
1. Function is group of reusable code which can be called anywhere in your program.
2. This eliminated the need of writing the same code again and again.
3. It helps programmer in writing modular codes. 
4. Functions allow programmers to divide a big program into a small and managable functions.
*/

contract Functions {
    // function remoteControlOpen(bool closeDoor) public returns(bool) {
    //     all the code of the function - the scripts - the statements
    // }

    function multiply(uint a, uint b) public pure returns(uint) {
        return a * b;
    } 

    function divideNumbers(uint a, unit b) public pure returns (unit) {
        return a / b;
    }
}