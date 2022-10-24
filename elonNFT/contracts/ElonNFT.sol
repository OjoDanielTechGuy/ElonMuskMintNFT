//SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.9;

import "hardhat/console.sol"; //this is given by hardhat to debug our code, it's very useful in local environment
//importing ERC721 which stores the metadata of NFT
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
//importing Counter to keep track of NFTs minted
import "@openzeppelin/contracts/utils/Counters.sol";

contract ElonNFT is ERC721URIStorage {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIds;

    //As soon as the contract is deployed, the constructor is called and a message will be displayed on the terminal.
    constructor() ERC721("ElonMusk", "ELON") {}

    function mintNFT() public returns (uint256) {
        _tokenIds.increment();
        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        //to get the link copy your json file into to json keeper website to get a URL link
        _setTokenURI(newItemId, "https://jsonkeeper.com/b/O8DM"); //https://jsonkeeper.com/b/JJJS
        console.log(
            "The NFT ID %s has been minted to %s",
            newItemId,
            msg.sender
        );
        return newItemId;
    }
}
