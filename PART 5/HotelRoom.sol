// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

//Ether Payments
//Modifiers
//Visibility
//Events
//Enums

contract HotelRoom {

    //Using an enum to track if the hotel room is now occupied or vacant
    //enums are keeping track of status or states
    enum Statuses {Vacant, Occupied };
    //Create a variable that keeps track of the current status
    Statuses currentStatus;

    //Address of the person that created the smart contract(developer/ hotel owner)
    //The payable modifier lets the address of owner receive payment
    address payable public owner;

    constructor () public {
        owner = msg.sender;
        currentStatus = Statuses.vacant;
    }

    //See how we used the payable modifier too
    function book() payable {
        //The require statement checks the validity of a statement before it continues to other lines
        require(currentStatus == Statuses.vacant, "Currently Occupied");

        //Check Price
        require(msg.value >= 0.05 BNB, "Not enough coins provided");
        
        //The transfer function enables whoever is calling the book function to transfer crypto to  the owner
        //msg.value is the amount of crypto to send
        owner.transfer(msg.value);
        //Using enum to occupy the room
        currentStatus = Status.occupied;
    }

}