pragma solidity ^0.8.0;


// The name of the files (the smart contract) are always capitalized as in Contract.sol//
contract Counter{
    //A state variable is a variable that is stored on the blockchain itself...
    //and they are created by defining them inside contracts (Counter is the contract and count is the state variable)
    //Solidity is statically typed, so when declaring variables, you have to specify the type of variable
    uint count;
    //Unsigned integers (uint) are integers that can't have a sign (eg. -1, *2 etc.). They can only be positive. (eg. 1, 2, 4 etc)

    //A constructor is a special function for each smart contract that runs once
    //(when the contract is deployed to the blockchain)
    //We have to make it public so it can be called whenever the contract is initialized
    constructor() public {
        count = 0;
    }


    //Below is the format for defining functions in contracts
    //There are other modifiers besides public
    //This is a read function and it is free
    function getCount() public view returns (uint){
        return count;
    }

    //Below is a write function
    //Unlike the read function above, this one has the ability to change the blockchain..
    //Hence, you have to pay gas whenever it is called
    function incrementCount() public {
        count = count + 1;
    }
}
//Contracts are like objects in other programming languages//