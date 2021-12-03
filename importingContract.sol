//SPDX-License-Identifier: MIT
pragma solidity ^0.6.0;

import "./SmipleStorage.sol";

contract StorageFactory{

    SmipleStorage[] public simpleStorageArray;


    function createSmipleStorageContract()public{
        SmipleStorage simpleStorage = new SmipleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function sfStore(uint256 _simpleStorageIndex , uint256 _simpleStorageNumber) public {
        SmipleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SmipleStorage simpleStorage = SmipleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleStorage.reterive();
    }

}