// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
     //boolean, uint, int, address, bytes

     // this gets initialized to 0
     uint256 public favNum;

     function store(uint256 _favoriteNumber) public {
        favNum = _favoriteNumber;
        favNum  += 4;
     }
        //view and pure function
     function retrieve() public view returns (uint256){
        return favNum;
     }

     function add() public pure returns (uint256){
        return (1+1);
     }
}

//0xd9145CCE52D386f254917e481eB44e9943F39138