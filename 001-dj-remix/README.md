# 1st smart contract in remix

Starting off easy here to create a simple contract

`simple.sol` -- just trying to see how remix/fields work

`coffee.sol` -- tried to mess with public/private + math

`coffee-shop.sol` -- an extension of `coffee.sol` to set an "owner/admin" at construction and have role-specific funcs

##### some thoughts
 - uint overflow? are protections in solidity by default?
 - multiple owners with an array? how to handle different level of perms? can we do a entitlement sort of thing? (ie turn off/on access on a func by func basis?)