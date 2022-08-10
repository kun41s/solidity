/*
Mapping is a reference type as arrays and structs.

mapping(_keyType => _valueType)

where : 
_KeyType − can be any built-in types plus bytes and string. No reference type or complex objects are allowed.
_ValueType − can be any type.


- Mapping can only have type of storage and are generally used for state variables.
- Mapping can be marked public. Solidity automatically create getter for it.

*/

// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.7.0 < 0.9.0;

contract MappingWithStruct {
    //define struct
    struct Student {
        string name;
        string subject;
        uint marks;
    }

    //create mapping 
    mapping (address => Student) public result;
    
    function setStudent(string memory _name, string memory _subject, uint _marks) public {
        result[msg.sender] = Student(_name, _subject, _marks);    //set values to result  
    }
}