// deploy.js
async function main() {
  const nftContractFactory = await hre.ethers.getContractFactory("MyEpicNFT");
  const nftContract = await nftContractFactory.deploy();
  await nftContract.deployed();
  console.log("Contract deployed to:", nftContract.address);
  let txn = await nftContract.makeAnEpicNFT();
  await txn.wait();

  txn = await nftContract.makeAnEpicNFT();
  await txn.wait();
};

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});