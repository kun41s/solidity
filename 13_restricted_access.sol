//SPDX-License-Identifier: GPL-3.0

/*
Let us build a contract with modified restricted access with the following common writeouts:

       onlyBy - only the mention caller can call this function
       onlyAfter - called after certain period of time
       costs - call this function only if certain value is provided.
*/

pragma solidity >= 0.7.0 < 0.9.0;

contract RestrictedAccess {

    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    //modifier will require the current caller to be equal to an account address
    //which we set as an input in the modifier.
    modifier onlyBy (address _account) {
        require (msg.sender == _account, "Sender is not authorized");
        _;
    }

    modifier onlyAfter (uint _time) {
        require (block.timestamp >= _time, "Function called to early");
        _;
    }

    modifier costs (uint _amount) {
        require(msg.value >= _amount, "Not enough ethers");
        _;
    }

    //function to change change owner address
    function changeOwner (address _newOwner) onlyBy(owner) public {
        owner = _newOwner;
    }

    //function that can disown the current owner
    function disOwn () onlyBy(owner) onlyAfter(creationTime + 5 seconds) public {
        delete owner;
    }

    function forceOwnerChange(address _newAddress) payable public costs(200 ether)  {
        owner = _newAddress;
    }
}