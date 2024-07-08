// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//get funds fron users
//withdraw funds
//set minimum funding value in usd

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract FundMe{
   uint256 public minimumUsd = 50 * 1e18;
   address[] public funders;
   mapping (address => uint256) public addressToAmountFunded;

     function fund() public payable {
        //set minimum find amount
        require(getConversionRate(msg.value) >= minimumUsd, "didnt send enough");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;
     }

     function getPrice() public view returns (uint256){
      // ABI 
      // Adrress 0x694AA1769357215DE4FAC081bf1f309aDC325306

      AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
      (,int256 answer,,,) = priceFeed.latestRoundData();

      return uint256(answer * 1e10);
     }

     function getVersion() public view returns (uint256) {
      AggregatorV3Interface priceFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
      return priceFeed.version();
     }

     function getConversionRate(uint256 ethAmount) public view returns(uint256) {
      uint256 ethPrice = getPrice();
      uint256 ethAmountInUsd = (ethPrice * ethAmount) / 1e18;
      return ethAmountInUsd;
   }

    //  function withdraw() public {}
}