//SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import {SimpleStorage} from "./EasyStorage.sol";


contract AddFiveStorage is SimpleStorage{

    function store(uint newNumber) public override{
    myFavoriteNumber =newNumber + 5;
    }
}