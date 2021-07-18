// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFT {
  address payable public _owner;
  mapping (uint => bool) public sold;
  mapping (uint => uint) public price;

  constructor() ERC721("Bitcoin Stash", "BTSH") {
  	_owner = msg.sender;
  }

  function mint(string memory _tokenURI, uint _price) public onlyOwner returns (bool) {
    uint _tokenId = totalSupply() + 1;
    price[_tokenId] = _price;

    _mint(address(this), _tokenId);
    _setTokenURI(_tokenId, _tokenURI);
    
    return true;
  }

  function buy(uint _id) external payable {
    _validate(_id); //check req. for trade
    _trade(_id); //swap nft for eth
    
    emit Purchase(msg.sender, price[_id], _id, tokenURI(_id));
  }

}
