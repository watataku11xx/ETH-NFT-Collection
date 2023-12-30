require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.18",
  defaultNetwork: "hardhat",
  networks:{
    sepolia: {
      url: "https://eth-sepolia.g.alchemy.com/v2/28qFjgdg_FpHsYZGU4UtQlUbyQIkOY7I" || '',
      accounts: "b1c07d74838125147abff2dea5516da965d4d18cb05c40432fb16a9b28c2a37d" ? ["b1c07d74838125147abff2dea5516da965d4d18cb05c40432fb16a9b28c2a37d"]: [],
    },
  },
};
