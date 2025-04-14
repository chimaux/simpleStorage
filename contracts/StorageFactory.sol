// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

import {SimpleStorage} from "./EasyStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorageContract;

    function createListSimpleStorageContract()public {

        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContract.push(newSimpleStorageContract);
    }
    function sfStore(uint _simpleStorageIndex, uint _newSimpleStorageNumber) public{
        SimpleStorage mySimpleStorage = listOfSimpleStorageContract[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint _simpleStorageIndex ) public view returns (uint){
        return listOfSimpleStorageContract[_simpleStorageIndex].retrieve();
    }
}