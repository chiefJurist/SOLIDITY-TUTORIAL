// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract MyContract {
    //State variables are variables defined inside a contract. They are stored on the blockchain
    int public myInt = 1;
    uint public myUint = 1;
    //uint is the short for uint256 and int is short for int256.
    //256 or any number at the end of the "uint or int" keyword is the number of bytes stored in the number.
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    //int is used for declaring signed integers and uint is keyword for declaring unsigned integers

    //string or byte(number) keyword is used word for delaring string variables
    string public myString = "Hello, World!";
    bytes32 public myByte32 = "Hello, World!"; // Allows you to stre a string in a byte32 format.
    //Storing variables in byte format gives you some extra functionality

    //address keyword is used to store addresses as variables
    address public myAdress = 0xBdE5533e25eE5399003a8070bf8CC2bA4f362B70;

    //Structs let you create yourown custom data type
    struct MyStruct{
        uint256 myUint256;
        string myString;
    }
    MyStruct public myStruct = MyStruct(1, "Hello, World!")


    //Local variables are variables defined in a function. They can only be assesed in that function.
    //The "pure" keyword means it doesn't modify or mutate the blockchain in anyway. It just fetches information
    function getValue() public pure returns (uint) {
        uint value = 1;
        return value;
    }
}