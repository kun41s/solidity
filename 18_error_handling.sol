/*
- Solidity provides various functions for error handling. Generally when an error occurs,the state is reverted back to its original state.
- Other checks are to prevent unauthorized code access.

1. **`Assert (bool)`**  : In case condition is not met, this method call causes an invalid opcode and any changes done to state got reverted. This method is to be used for internal errors.

1. `**Require (bool)**` : In case condition is not met, this method call reverts to original state. This method is used for errors in inputs or external components.

1. `**Revert()**` : This method aborts the execution and revert any changes done to the state.

1. `**Revert (string memory reason)**` : This method aborts the execution and revert any changes dont to the state. It provides an option to provide a custom message.
*/


// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.7.0 < 0.9.0;

contract ErrorHandling {
   address public seller;
   modifier onlySeller() {
      require(
         msg.sender == seller,
         "Only seller can call this."
      );
      _;
   }
   function sell(uint amount) public payable onlySeller { 
      if (amount > msg.value / 2 ether)
         revert("Not enough Ether provided.");
      // Perform the sell operation.
   }
}
