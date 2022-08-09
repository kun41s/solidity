pragma solidity >= 0.7.0 < 0.9.0;

/*
While writing program in any language, you need to use various variables to store information.
Variables are nothing but reserved memory locations to store values.
This means that when you create a variable you reserve some space in memory.
*/

//variables : are used to store information to be referenced and manipulated in a computer program.

/* Types : 
1. Boolean - keyword : bool  - value : true/false
2. Integer - keyword : uint  - value : Signed and unsigned integers of varying sizes
3. String  - keyword : string - values such as letter, word, sentences

*/ 

contract VariablesAndDataTypes {
    uint wallet = 500;
    bool spent = false;
    string notifySpend = "You have spend money";
}