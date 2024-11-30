// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract wallet {

    struct owner {
        string name;
        uint256 amount;
    }

    mapping(address => owner) public info;

    // Fund function
    function fund(string memory _name) public payable {
        require(msg.value > 0, "Not enough to fund");

       
        owner storage Ownerinfo = info[msg.sender];
        Ownerinfo.name = _name;
        Ownerinfo.amount += msg.value;
    }

    // Withdraw function 
    function withdraw(address payable _toSend, uint256 amountToWithdraw) public {
       
        require(info[msg.sender].amount >= amountToWithdraw, "Insufficient funds");

        
        info[msg.sender].amount -= amountToWithdraw;

        // Transfer the funds to the specified address
        _toSend.transfer(amountToWithdraw);
    }
}
