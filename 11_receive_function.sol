// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.7.0 < 0.9.0;

contract ReceiveFunction {
    receive() external payable {
        //write something
    }

    function checkBalance() public view returns(uint) {
        return address(this).balance;
    } 
}