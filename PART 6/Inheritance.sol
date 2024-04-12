// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;

//Inheritance
//Factories
//Interaction

contract Ownable {
    address owner

    modifier onlyOwner(){
        require(msg.sender == owner, "must be owner");
        _;
    }

    constructor () {
        owner = msg.sender;
    }
}// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }

    constructor() {
        owner = msg.sender;
    }
}

contract SecretVault {
    string private secret;

    constructor(string memory _secret) {
        secret = _secret;
    }

    function getSecret() public view returns (string memory) {
        return secret;
    }
}

contract MyContract is Ownable {
    address private secretVault;

    constructor(string memory _secret) {
        // Create a new SecretVault contract
        SecretVault _secretVault = new SecretVault(_secret);
        // Store the address of the created SecretVault contract
        secretVault = address(_secretVault);
    }

    function getSecret() public view onlyOwner returns (string memory) {
        // Access the SecretVault contract using the stored address
        return SecretVault(secretVault).getSecret();
    }
}


//A factory (e.g. SecretVault) is a smart contract that creates other smart contracts

contract SecretVault {
    string secret;

    constructor (string memory _secret) {
        secret =  _secret;
    }

    function getSecret() public view returns(string memory) {
        return secret
    }
}

contract MyContract is Ownable{
    constructor (string memory _secret) {
        address secretVault;

        //we are storing our new smart contract inside the variable "_secretVault"
        SecretVault _secretVault  =  new SecretVault(_secret);
        //super helps us call the constructor from the parent contract
        secretVault = address(_secretVault)
        super;
    }

    function getSecret() public view onlyOwner returns(string memory) {
        return secret
    }
}