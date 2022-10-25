const hre = require ("hardhat");

async function main() {

    const ElonNFt = await hre.ethers.getContractFactory("ElonNFT");
    
    //var contract = await contractFactory.deploy({value:hre.ethers.utils.parseEther("0.1")});
    
    const elon = await ElonNFt.deploy();

    await elon.deployed();

    console.log("ElonNFT deployed to: ", elon.address);

    let txn = await elon.mintNFT();

    await txn.wait();
}
    // We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });