// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage {
     //boolean, uint, int, address, bytes

     // this gets initialized to 0
     uint256 favNum;

     People public person = People({
        favNum: 2, name: "patrick star"
     });

     struct People{
        uint256 favNum;
        string name;
     }
    
    People[] public people;

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

     function addPerson(string memory _name, uint256 _favNum) public {
        //People memory newPerson = People({favNum: _favNum, name: _name});
        people.push(People(_favNum, _name));
     }
}

//0xd9145CCE52D386f254917e481eB44e9943F39138