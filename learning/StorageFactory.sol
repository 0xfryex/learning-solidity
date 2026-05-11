// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Simplestorage, Simplestorage2} from "./SimpleStorage.sol";

contract storagefactory{

    Simplestorage public mysimplestorage;

    function createsimplestorage() public{
        mysimplestorage = new Simplestorage();
    }
}