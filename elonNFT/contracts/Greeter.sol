//This is a sample file,including greeter.sol

//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "hardhat/console.sol";

contract Greeter {
    string private greeting;

    constructor (string memory _greeting) {
        console.log("Deploying a Greeter with greeting: ", _greeting);
        greeting = _greeting;
    }

    //this function returns the value of greeting
    function greet() public view returns(string memory) {
        return greeting;
    }

    //this function set the value of the greeting message
    function setGreeting(string memory _greeting) public {
        console.log("Changing greeting from '%s' to '%s", greeting, _greeting);

        greeting = _greeting;
    }
}