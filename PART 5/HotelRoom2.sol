// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

//Ether Payments
//Modifiers
//Visibility
//Events
//Enums

contract HotelRoom {

    enum Statuses {
        Vacant, 
        Occupied 
    }
    Statuses public currentStatus;

    //Using an event modifier to get a feedback that the action is complete
    //We can get a log of the bookings with this and also get an alert anytime someone books an hotel room
    event Occupy(address _ocupant, uint _value);

    address payable public owner;

    constructor () {
        owner = payable(msg.sender);
        currentStatus = Statuses.Vacant;
    }

    //Creating a modifier
    modifier onlyWhileVacant() {
        require(currentStatus == Statuses.Vacant, "Currently Occupied");
        _;
    }

    //Notice how we use variables for this modifier
    modifier costs(uint _amount) {
        //Check Price
        require(msg.value >= _amount, "Not enough coins provided");
        _;
    }

    //Using the modifier in the function
    function book() public payable onlyWhileVacant costs(0.05 ether){
        //another way to send crypto. We can also send a message too
        //The bool is to check the transaction status
        (bool sent, bytes memory data) = owner.call{value: msg.value} ("");
        //To make sure the transaction was successful before we proceed
        require(true);

        currentStatus = Statuses.Occupied;

        //Calling the event modifier
        emit Occupy(msg.sender, msg.value);
    }

}