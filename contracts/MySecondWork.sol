// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;


contract MySecondWork {
    struct Details {
        string name;
        uint256 age;
        address addy;
    }

    constructor() {
        detail.push(Details("femi", 23, msg.sender));
    }

    mapping (string => uint256) public  nameToScore;

    Details[] public  detail;

    function setTestScores (string memory _name, uint _age, uint256 _score) public {
        detail.push(Details(_name, _age, msg.sender));
        nameToScore[_name] = _score;
    }

   
}