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

    Details[] public  detail;

    function setTestScores (string memory _name, uint _age, address _addy) public {
        detail.push(Details(_name, _age, _addy));
    }
}