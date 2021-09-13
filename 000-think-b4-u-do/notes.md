# Notes

I know a basic understanding about how the etherum/blockchain works so this is just me doing a deep dive to understand the underlaying tech

some of this might be wrong :rip:

---

[But how does bitcoin actually work?](https://youtu.be/bBC-nXj3Ng4)

[5. Blockchain Basics & Transactions, UTXO and Script Code](https://youtu.be/zGDTt9Q3vyM)

[6. Smart Contracts and DApps](https://youtu.be/JPkgJwJHYSc)

Need to wait N more blocks to wait to verify, the greater N is, the more confident you can be on the validity of the block

##### Important differences

| Btc                          | Eth                        |
| ---------------------------- | -------------------------- |
| Script (NOT turing-complete) | Turing Complete (uses sol) |
| UTXO (transaction)           | State (account)            |

dApps usually have a native token

[Bitcoin whitepaper](https://bitcoin.org/bitcoin.pdf)

##### Gas

[Understanding an Ethereum Transaction: Gas, Blocks and Fees](https://www.youtube.com/watch?v=ElvN6uwOg1U)

- Gas exists b/c "work" is done
- Gas is charged based off the compiled opcodes
- more complex code == more gas needed
- gwei is the gas unit (small division of eth)
- Gas limit (max gas that can be used)
- gas price (the $$$ of an actual unit)
- total effective gas = gas used \* gas price

In relation to "gas wars" of NFTS

- A eth block has a fixed # of txns
- gas price can be "tipped"
- A miner is more likely to include txns that have a higher gas / tip (duhh)

##### Layer two / L2

Not really an "alt coin" (litecoin) or even a "hard fork" (btc cash)

Built "on top" of existing chain like Eth

exmaples: polygon, lightning, etc

Meant to "off-load" some of the work on the main chain (eth) as there is a hard limit on the number of transactions per block, and time 2 block

aka increase bandwith and create more "localized" movement but still create acc. on the main chain
