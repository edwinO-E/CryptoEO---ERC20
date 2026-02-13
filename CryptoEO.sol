// License
// SPDX-License-Identifier: LGPL-3.0-only

//Version solidity
pragma solidity 0.8.33;

//Library
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


//Basic ERC20 Token
//Contrac
contract CryptoEO is ERC20 {

    //Variables
    uint256 public constant initialSupply = 1000 * 1e18; 

     // Simple ERC20 token using OpenZeppelin. Mints a fixed supply at deployment
    constructor(string memory name_, string memory symbol_) ERC20(name_, symbol_) {
        _mint(msg.sender,initialSupply);

    }
}