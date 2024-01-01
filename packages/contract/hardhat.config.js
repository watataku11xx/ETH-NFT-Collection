// hardhat.config.js
require('@nomicfoundation/hardhat-toolbox');
require('dotenv').config();

const { STAGING_ALCHEMY_KEY, PRIVATE_KEY } = process.env;

module.exports = {
  solidity: '0.8.18',
  defaultNetwork: 'hardhat',
  networks: {
    sepolia: {
      url: STAGING_ALCHEMY_KEY || '',
      accounts: PRIVATE_KEY ? [PRIVATE_KEY] : [],
    },
  },
};