
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "contracts/SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }


    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        //address

        SimpleStorage simpleStorage = simpleStorageArray[_simpleStorageIndex];
        simpleStorage.store(_simpleStorageNumber);
        //ABI
    }

    function sfGet(uint256 simpleStorageIndex) public view returns (uint256) {
        SimpleStorage simpleStorage = simpleStorageArray[simpleStorageIndex];
    return simpleStorage.retrieve();

    }
    function sfAdd(uint256 simpleStorageIndex) public view returns(uint256){
        SimpleStorage simpleStorage = simpleStorageArray[simpleStorageIndex];
        return  simpleStorage.add();
    }

    // function sfAddPerson(uint256 simpleStorageIndex, string memory simpleStorageName, uint256 simpleStorageFavNum ) public{
    //     SimpleStorage simpleStorage = simpleStorageArray[simpleStorageIndex];
    //     simpleStorage.addPerson(simpleStorageName, simpleStorageFavNum);
    // }

    // function sfGetPerson (uint256 simpleStorageIndex, string memory simpleStorageName) public view {
    //     SimpleStorage simpleStorage = simpleStorageArray[simpleStorageIndex];

    //     return simpleStorage.nameToFavNum();
    // }
}