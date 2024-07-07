// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//get funds fron users
//withdraw funds
//set minimum funding value in usd

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe{
   uint256 public minimumUsd = 50;

     function fund() public payable {
        //set minimum find amount
        require(msg.value >= 1e18, "didnt send enough");
     }

     function getPrice() public {
      // ABI 
      // Adrress 0x694AA1769357215DE4FAC081bf1f309aDC325306
     }

     function getVersion() public view returns (uint256) {
      AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
      return priceFeed.version();
     }

    //  function withdraw() public {}
}