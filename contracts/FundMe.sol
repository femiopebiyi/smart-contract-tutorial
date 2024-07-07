// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

//get funds fron users
//withdraw funds
//set minimum funding value in usd

contract FundMe{
   uint256 public minimumUsd = 50;

     function fund() public payable {
        //set minimum find amount
        require(msg.value >= 1e18, "didnt send enough");
     }

    //  function withdraw() public {}
}