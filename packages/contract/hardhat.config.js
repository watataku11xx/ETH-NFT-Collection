require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: '0.8.18',
  defaultNetwork: 'hardhat',
  networks: {
    sepolia: {
      url: "YOUR_ALCHEMY_API_URL" || '',
      accounts: "YOUR_PRIVATE_ACCOUNT_KEY" ? ["YOUR_PRIVATE_ACCOUNT_KEY"] : [],
    },
  },
};