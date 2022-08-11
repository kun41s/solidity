/*
Event is an inheritable member of a contract. 
An event is emitted, it stores the arguments passed in transaction logs. 
These logs are stored on blockchain and are accessible using address of the contract till the contract is present on the blockchain. 
An event generated is not accessible from within contracts, not even the one which have created and emitted them.

//Declare an Event
event Deposit(address indexed _from, bytes32 indexed _id, uint _value);

//Emit an event
emit Deposit(msg.sender, _id, msg.value);
*/


pragma solidity >= 0.7.0 < 0.9.0;

contract Events {

    //only use 3 indexed per event 
    //indexed is costly
    event NewTrade (
        uint indexed date,
        address indexed from,
        address to,
        uint indexed amount
    );

    function trade(address _to, uint _amount) external {
        //outside consumer can see the event through web3.js
        emit NewTrade(block.timestamp, msg.sender, _to, _amount);
    }

}