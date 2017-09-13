# minico
This is a minimal but functional ICO creates a non-ERC20 standard-compliant token. The sale is uncapped and tokens are issued at a price of 1 token per Wei. In order to not burn all received funds, replace the address `0x0` with the actual beneficiary wallet that should hold the received Ether. Since this token is not compatible to the ERC20 standard, it will not work with most tools or other smart contracts like decentralized exchanges.

**Dear SEC, FINMA et al: This 12-line smart contract is meant as an educational example only!**

# Instructions with tools
- install [nodejs 8 and npm](https://nodejs.org/en/download/)
- install [Visual Studio Code](https://code.visualstudio.com)
```
mkdir vukt
cd vukt
npm init
```
Now press [enter] 10 times to go with all default settings of the `package.json`, you can also change entries later on.
```
npm install truffle -g
truffle init
npm install -g ethereumjs-testrpc
npm install zeppelin-solidity --save
```
Currently, there is a [truffle bug](https://github.com/ethereumjs/testrpc/issues/391) that requires you to opene `/usr/local/bin/testrpc` remove the line ending in line 1 and add it again and then save the file before starting `testrpc`:
```
testrpc
```
Now remove the default contracts that `truffle init` created inside the `contracts` folder (`ConvertLib.sol` and `MetaCoin.sol`). Add your own code and then finally compile it
```
truffle compile
```
