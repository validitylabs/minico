# minico
This is a minimal but functional ICO. It issues a non-ERC20 standard-compliant token in exchange for Ether. The sale is  uncapped, runs indefinitely and tokens are issued at a price of 1 token per Wei. In order to not burn all received funds, replace the address `0x0` with the actual beneficiary wallet that should receive all incoming Ether.

**Warning**: Since this token is not compatible to the [ERC20 standard](https://theethereum.wiki/w/index.php/ERC20_Token_Standard) (it is missing `approve`, `transferFrom` and `totalSupply` functions and also does not have any events) it will not work with most tools or other smart contracts like decentralized exchanges.

**Dear SEC, FINMA et al: This 12-line smart contract is meant to be an educational example only!**
