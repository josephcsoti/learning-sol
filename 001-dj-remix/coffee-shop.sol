// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/// @title coffee thing
contract CoffeeShop {
    uint256 public brewedAmount;
    uint256 public cupsSold;

    uint256 amountInACup;
    address private owner;

    constructor() {
        // person who creates contract should be owner
        owner = msg.sender;
        brewedAmount = 300;
        amountInACup = 175;
        cupsSold = 0;
    }

    // Owner
    modifier isOwner() {
        require(msg.sender == owner, "Not the owner");
        _;
    }

    function brew(uint256 _amount) public isOwner {
        // only the owner can make more coffee
        brewedAmount += _amount;
    }

    function changeAmountInCup(uint256 _amount) public isOwner {
        // only the owner can change the amount in each cup
        amountInACup = _amount;
    }

    function getAmountInCup() public view isOwner returns (uint256) {
        return amountInACup;
    }

    function sell(uint256 _cups) public {
        drain(_cups);
        cupsSold++;
    }

    function drain(uint256 _cups) private {
        uint256 requestedAmount = _cups * amountInACup;

        // check we can actually sell
        require(brewedAmount - requestedAmount >= 0, "Not enough coffee");

        brewedAmount -= requestedAmount;
    }
}
