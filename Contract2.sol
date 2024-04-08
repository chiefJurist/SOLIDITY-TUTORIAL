// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.0;


contract Counter {
    //By setting the count variable to public, we get the default solidity function that makes us not tot require getCount() function
    //We can just set the value of count on a straight line, removing the need fora constructor in this case
    uint public count = 0;


    function incrementCount() public {
        count++;
    }
}