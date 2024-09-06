// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.24;

contract escrow{
    address agent;
mapping(address=>uint256) public deposits;

modifier onlyagent(){
    require(msg.sender==agent);
    _;
}

    constructor(){
        agent=msg.sender;
    }
    function deposit(address payee)payable  onlyagent() public{
        uint256 amount=msg.value;
        deposits[payee]=deposits[payee]+amount;


    }
    function withdraw(address payable payee) onlyagent() public{
        uint256 payment= deposits[payee];
        deposits[payee]=0;
        payee.transfer(payment);
    }
}