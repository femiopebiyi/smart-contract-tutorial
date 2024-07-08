// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//get funds fron users
//withdraw funds
//set minimum funding value in usd

import "contracts/PriceConverter.sol";

contract FundMe{
   using PriceConverter for uint256;
   uint256 public minimumUsd = 50 * 1e18;
   address[] public funders;
   mapping (address => uint256) public addressToAmountFunded;

     function fund() public payable {
        //set minimum find amount
        require(msg.value.getConversionRate() >= minimumUsd, "didnt send enough");
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] = msg.value;
     }

     

    //  function withdraw() public {}
}