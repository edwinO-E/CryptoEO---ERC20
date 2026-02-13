# 🪙 CryptoEO (Basic ERC-20 Token)

---

## 🧾 Overview

**CryptoEO** is a beginner-friendly **ERC-20 token** written in Solidity and built on top of **OpenZeppelin**.  
It mints a **fixed initial supply** to the deployer at the moment of deployment.

This project is intended to practice:
- Solidity smart contract structure
- Imports and inheritance with OpenZeppelin (`ERC20`)
- Constructor parameters (`name`, `symbol`)
- Minting tokens at deployment (`_mint`)
- Deploying and testing in Remix IDE

---

## 🚀 Features

| Feature | Description |
|--------|-------------|
| ERC-20 Standard | Uses OpenZeppelin ERC20 implementation. |
| Fixed Supply | Mints `initialSupply` to the deployer on deployment. |
| Constructor Inputs | Token name and symbol are set at deployment. |
| Minimal & Readable | Small codebase, easy to understand and review. |
| Industry Library | Uses OpenZeppelin (widely used and audited). |

---

## 📌 Contract Details

- **Contract Name:** `CryptoEO`
- **Solidity Version:** `0.8.33`
- **Token Standard:** ERC-20 (OpenZeppelin)
- **Initial Supply:** `1000 * 1e18` (1000 tokens with 18 decimals)
- **Mint Receiver:** `msg.sender` (the deployer)

---

## 🧬 Contracts & Inheritance

### `CryptoEO.sol`
- `CryptoEO` → inherits from `ERC20` (OpenZeppelin)
- `_mint(msg.sender, initialSupply)` runs inside the constructor

---

## 🧠 Key ERC-20 Functions (inherited from OpenZeppelin)

Even though the custom code is small, OpenZeppelin provides the full ERC-20 API:

- `totalSupply()`
- `balanceOf(address account)`
- `transfer(address to, uint256 amount)`
- `approve(address spender, uint256 amount)`
- `allowance(address owner, address spender)`
- `transferFrom(address from, address to, uint256 amount)`

---

## 🛠️ Tech Stack

| Component | Details |
|----------|---------|
| Language | Solidity `0.8.33` |
| Library | OpenZeppelin Contracts (`ERC20`) |
| IDE | Remix IDE |

---

## 🔗 How to Use

### 🛠️ Prerequisites
- Solidity version: **0.8.33**
- Remix IDE (recommended): https://remix.ethereum.org
- (Optional) Any EVM-compatible environment (Hardhat / Foundry / Truffle)

### 🚀 Deployment Steps (Remix)
1. Open **Remix IDE**.
2. Create the file: `contracts/CryptoEO.sol`.
3. Copy and paste the contract code into the file.
4. Go to **Solidity Compiler** and select version **0.8.33**.
5. Click **Compile**.
6. Go to **Deploy & Run Transactions**.
7. Select contract: **CryptoEO**.
8. Fill constructor parameters:
   - `name_`: e.g. `CryptoEO`
   - `symbol_`: e.g. `CEO`
9. Click **Deploy**.

### 🧪 Interacting with the Contract (Remix)
After deployment:

1. **Check total supply**
   - Call `totalSupply()`
   - Expected: equals `initialSupply`

2. **Check deployer balance**
   - Call `balanceOf(<deployer_address>)`
   - Expected: equals `initialSupply`

3. **Transfer test**
   - Call `transfer(<receiver_address>, 10 * 1e18)`
   - Verify receiver balance increased by `10 * 1e18`
     
---

## 📄 License
This project is licensed under LGPL-3.0-only. Refer to the contract headers or the GNU Lesser General Public License documentation for more details.
