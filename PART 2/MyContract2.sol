// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract MyContract {
    //Arrays
    uint[] public uintArray = [1, 2, 3];
    string[] public stringArray = ["apple", "banana", "carrot"];
    string[] public values; //An empty array

    //A two dimensional array
    uint256[][] public array2D = [[1, 2, 3], [4, 5, 6]];

    //function to update the empty array
    function addValue(string memory __value) public {
        values.push(__value);
    }

    //Function to check the length of the array
    function valueCount() public view returns(uint){
        return values.length;
    }
}