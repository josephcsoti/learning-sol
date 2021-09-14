// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/// @title coffee thing
contract Coffee {
    uint256 public brewedAmount;
    uint256 public cupsSold;

    uint256 private amountInACup;

    constructor() {
        brewedAmount = 300;
        amountInACup = 175;
        cupsSold = 0;
    }

    function brew(uint256 _amount) public {
        // can this overflow??
        brewedAmount += _amount;
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
