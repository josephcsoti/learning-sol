// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

/// @title just a normal bank...
contract Bank {
    struct Customer {
        string name;
        uint256 balance;
        uint256 createdAt;
    }

    mapping(address => Customer) vault;

    address private owner;

    constructor() {}

    function openAccount(string memory _name) public {
        require(vault[msg.sender].createdAt == 0, "Account already opened");
        vault[msg.sender] = Customer({
            name: _name,
            balance: 0,
            createdAt: block.timestamp
        });
    }

    function closeAccount() public {
        require(vault[msg.sender].createdAt != 0, "No account to close");

        delete vault[msg.sender];
    }

    function addFunds(uint256 _amount) public {
        require(_amount > 0, "Cant fund w/ neg amount");

        address me = msg.sender;

        Customer memory previousState = vault[me];
        vault[me] = Customer({
            name: previousState.name,
            balance: previousState.balance + _amount,
            createdAt: previousState.createdAt
        });
    }

    function removeFunds(uint256 _amount) public {
        require(_amount > 0, "Cant withdrawl a neg amount");

        address me = msg.sender;

        Customer memory previousState = vault[me];
        uint256 newBalance = previousState.balance - _amount;

        require(newBalance >= 0, "Not enough $$$");

        vault[me] = Customer({
            name: previousState.name,
            balance: newBalance,
            createdAt: previousState.createdAt
        });
    }

    function getBalance() public view returns (uint256) {
        address me = msg.sender;

        return vault[me].balance;
    }
}
