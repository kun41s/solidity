/* 
- A fallback function is an external function without a name, parameters, or return values. 
- It is called when a non-existent function is called on the contract.
- It is required to be marked external.
- No name, No parameter, No return value
- It can be defined one per contract
- If not marked payable, it will throw exception if contract receives plain ether without data.
*/

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.7.0 < 0.9.0;

contract FallbackFunction {
    fallback() external payable {
        //not recommended to write much code here - because the function is fail if it uses to much gas

        //invoke the send and transfer method: we get 2300 gas which is enough to emit a log
        //invoke the call method: we get all the gas

        //special solidity function gasleft() returns how much gas is left
    }

    //check available balance of contract account
    function getBal() public view returns(uint) {
        return address(this).balance;
    }
}