/*
Array is a data structure, which stores a fixed-size sequential collection of elements of the same type.
In Solidity, an array can be of compile-time fixed size or of dynamic size. 
For storage array, it can have different types of elements as well. 
In case of memory array, element type can not be mapping and in case it is to be used as function parameter then element type should be an ABI type.

declaration of array ::  type arrayName [ arraySize ];
10-element array    ::   uint arrayName[10];
dynamic array       ::   type[] arrayName;
initialize array    ::   uint balance[3] = [1, 2, 3];
omit size of array  ::   uint balance = [1, 2, 3];

Creating dynamic memory arrays : Dynamic memory arrays are created using new keyword.
        uint size = 3;
        uint balance[] = new uint[](size);
*/


// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.7.0 < 0.9.0;

contract Arrays {
    uint[] public arr;

    //insert element in array
    function pushNumbers(uint _num) public {
        arr.push(_num);
    }

    //pop element from top of array
    function popElement() public {
        arr.pop();
    }

    //get length of array
    function lengthOfArray() public view returns(uint) {
        return arr.length;
    }

    //read all elements from array
    function readArray() public view returns(uint[] memory) {
        return arr;
    }

    function removeElementFromArray(uint i) public {
        delete arr[i];     //It removes the specific element from array and changes it with 0
    }
}