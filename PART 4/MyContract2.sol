// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

contract MyContract{
    //CONDITIONALS
    //LOOPS

    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    //Making the functions below not to be mutable
    //This is a ownable smart contract and makes the caller have certain priviledges
    address public owner;
    constructor() {
        owner = msg.sender;
    }

    //Function with if statement
    function isEvenNumber(uint _number) public pure returns(bool) {
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    //Function with loop
    function countEvenNumbers() public view returns(uint) {
        uint count = 0;
        for (uint256 i = 0; i < numbers.length; i++) {
            if (isEvenNumber(number[i])) {
                count++;
            }
        }
        return count;
    }

    //Function for preventing mutation by checking if the current address is the owner
    function isOwner() public view returns(bool) {
        return(msg.sender == owner);
    }
}
