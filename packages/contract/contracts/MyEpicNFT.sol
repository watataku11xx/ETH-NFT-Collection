// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
contract MyEpicNFT is ERC721URIStorage{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721 ("SquareNFT", "SQUARE") {
      console.log("This is my NFT contract.");
    }
    
    function makeAnEpicNFT() public {
        _tokenIds.increment();
        uint256 newItemd = _tokenIds.current();
        _safeMint(msg.sender, newItemd);
        _setTokenURI(newItemd, "data:application/json;base64,ewogICAgIm5hbWUiOiAiVGFueWEiLAogICAgImRlc2NyaXB0aW9uIjogIkEgbWluZGZ1bCBjcmVhdHVyZS4gSnVzdCB3b2tlIHVwIGxpa2UgdGhpcy4iLAogICAgImltYWdlIjogImRhdGE6aW1hZ2Uvc3ZnK3htbDtiYXNlNjQsUEhOMlp3b2dJSGh0Ykc1elBTSm9kSFJ3T2k4dmQzZDNMbmN6TG05eVp5OHlNREF3TDNOMlp5SUtJQ0J3Y21WelpYSjJaVUZ6Y0dWamRGSmhkR2x2UFNKNFRXbHVXVTFwYmlCdFpXVjBJZ29nSUhacFpYZENiM2c5SWpBZ01DQXpOVEFnTXpVd0lnbytDaUFnUEhOMGVXeGxQZ29nSUNBZ0xtSmhjMlVnZXdvZ0lDQWdJQ0JtYVd4c09pQjNhR2wwWlRzS0lDQWdJQ0FnWm05dWRDMW1ZVzFwYkhrNklITmxjbWxtT3dvZ0lDQWdJQ0JtYjI1MExYTnBlbVU2SURFMGNIZzdDaUFnSUNCOUNpQWdQQzl6ZEhsc1pUNEtJQ0E4Y21WamRDQjNhV1IwYUQwaU1UQXdKU0lnYUdWcFoyaDBQU0l4TURBbElpQm1hV3hzUFNKaWJHRmpheUlnTHo0S0lDQThkR1Y0ZEFvZ0lDQWdlRDBpTlRBbElnb2dJQ0FnZVQwaU5UQWxJZ29nSUNBZ1kyeGhjM005SW1KaGMyVWlDaUFnSUNCa2IyMXBibUZ1ZEMxaVlYTmxiR2x1WlQwaWJXbGtaR3hsSWdvZ0lDQWdkR1Y0ZEMxaGJtTm9iM0k5SW0xcFpHUnNaU0lLSUNBK0NpQWdJQ0JGY0dsalRtWjBRM0psWVhSdmNnb2dJRHd2ZEdWNGRENEtQQzl6ZG1jKyIKfQ==");
        console.log('An NFT w/ ID %s has been minted to %s', newItemd, msg.sender);
    }

}