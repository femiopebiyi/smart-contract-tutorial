// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "contracts/PriceConverter.sol";

contract MyWork {
    using PriceConverter for uint256;
    uint256 public  schoolFee = 20 * 1e18;
    address[] public payers;

    address public owner;
    mapping (address => uint256) studentFeesPaid;

   constructor() {
      owner = msg.sender;
   }

    function paySchoolFee() public payable {
        require(msg.value.getConversionRate() >= schoolFee, "not enough");
        payers.push(msg.sender);
        studentFeesPaid[msg.sender] = msg.value;
    }

    function withdraw() public {
        require(msg.sender == owner, "you are not the owner");
        payers = new address[](0);
        for(uint256 i = 0; i<payers.length;i++){
            address payer = payers[i];
            studentFeesPaid[payer] = 0;
        }

        payers = new address[](0);

        (bool callSuccess,) = payable (msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "call failed");
    }
}

