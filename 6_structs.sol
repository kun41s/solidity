/*
Struct types are used to represent a record. 
Suppose you want to keep track of your books in a library. 
You might want to track the following attributes about each book −
    Title
    Author
    Subject
    Book ID

Define struct : you must use the struct keyword. 
The struct keyword defines a new data type, with more than one member.

struct structName {
    type1 typeName1;
    type2 typeName2;
    type3 typeName3;
}

Ex: 
    struct Book {
        string title;
        string author;
        uint bookId;
    }
*/


// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity >= 0.7.0 < 0.9.0;

contract Structs {
    struct Book {
        string title;
        string author;
        uint bookId;
    }

    Book book;

    function setBook() public {
        book = Book("Java", "authorName", 1);
    }

    function getBookNames() public view returns (string memory) {
        return book.title;
    }
}