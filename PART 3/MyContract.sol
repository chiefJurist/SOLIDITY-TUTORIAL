// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract MyContract{
    //MAPPINGS
    //Mapping lets us store data on the blockchain with key value pairs
    
    //the key and value datatype are uint and string respectively
    mapping (uint => string) public names;

    constructor () public {
        names[1] = "Addam";
        names[2] = "Bruce";
        names[3] = "Carl";
    }


    //Creating A Mapping That Lets Us Store A lot of Data On The Blockchain as database
    mapping (uint => Book) public books;

    struct Book {
        string title;
        string author;
    }

    function addBook(uint _id, string memory _title, string memory _author) public {
        books[_id] = Book(_title, _author);
    }


    //Creating A mapping nested in another mapping
    mapping(address => mapping (uint => Book)) public myBooks;
    function addMyBook(uint _id, string memory _title, string memory _author) public {
        //msg.sender is the person calling the contract
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}