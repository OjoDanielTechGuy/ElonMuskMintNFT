### Contains code snippets and Instruction on how the code is run

#### For this project, _Hardhat_ is used due to the local Ethereum network environment, and acccess to deploy, test and debug for free

- **Note:** install the hardhat in the directory using the commands below: <br>

---

1. **npm init --yes** this command brings up the **package.json**
2. **npm install --save--dev hardhat** this command installs the **node_modules** and **package-lock.json**
3. **npx hardhat (initiate hardhat)** this commands initiate the hardhat environment

##### Create a JavaScript project and this automically installs the dependencies needed

- Install more dependencies:

---

1. **npm install --save-dev@nomicfoundation/hardhat-toolbox**
2. **npm install @openzeppelin/contracts** A library for secure smart contract development

- Run the hardhat script in the directory
  **npx hardhat run scripts/filename.js** An address will be displayed if compiled successfully

##### Link to _ELONMUSK NFT_ solidity file: [Solidity file](./elonNFT/contracts/ElonNFT.sol).

**contract address //0x5FbDB2315678afecb367f032d93F642f64180aa3**
**minted NFTId to address //0xf39fd6e51aad88f6f4ce6ab8827279cfffb92266**

---

#### Launching NFT on testnet

- Set up your quick node by signing in **[Quicknode](https://www.quicknode.com/?utm_source=partner&utm_campaign=metaschool&utm_content=metaschool-guides&utm_medium=partner)**
- Create an end point
- Select Ethereum as network and Goerli as chain
- click create endpoint

---

#### Setting up Metamask with Quicknode

- Go to your Metamask wallet and click on the list of networks, click on **ADD NETWORK**
- Go back to quicknode dashboard and copy the **HTPPS PROVIDER**
- In your metamask **Paste the HTTPS in New RPC Url field with 5 as Chain ID**
- “ETH” as Currency Symbol,
- Ethereum Goerli - QuickNode as Network Name
- site: (https://goerli.etherscan.io/) as Block Explorer URL, Click on Save

#### For deployment in order to saveguard your private key

**In terminal**

1. npm install dotenv --save
2. create .env file at the root of your project (touch .env)

#### In the .env file

1. Add your MetaMask Private Key and QuickNode App HTTP URL in the format

   - PRIVATE_KEY = "YOUR_PRIVATE_KEY"
   - API_URL_KEY = "YOUR_QUICKNODE_APP_URL"
   - API_KEY = "YOUR_API_KEY"

---

**After deployment to goerli network: ElonNFT deployed to: 0x59E50197131E3871bb87244B39bAF1F5184B99C4**

#### Once the contract is deployed you confirm your minted NFT

---

- Copy your contract address and scan it on **[Goerli Etherscan](https://goerli.etherscan.io/)**. The contract address must have appeared on terminal.

- You can check your NFT in the **[Open Sea Testnet](https://testnets.opensea.io/)** by copying your contract address in the search item bar

### Link for MintedNFT: https://testnets.opensea.io/assets/goerli/0x59e50197131e3871bb87244b39baf1f5184b99c4/1
