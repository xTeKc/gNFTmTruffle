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

}
