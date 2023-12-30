// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
contract MyEpicNFT is ERC721URIStorage{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("TanyaNFT", "TANYA") {
      console.log("This is my NFT contract.");
    }
    
    function makeAnEpicNFT() public {
        _tokenIds.increment();
        uint256 newItemd = _tokenIds.current();
        _safeMint(msg.sender, newItemd);
        _setTokenURI(newItemd, "https://api.npoint.io/f247131f11f141952605");
        console.log('An NFT w/ ID %s has been minted to %s', newItemd, msg.sender);
    }

}