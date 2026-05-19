// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {SimpleStorage} from "./SimpleStorage.sol";

contract storagefactory{

    SimpleStorage[] public listofSimpleStorage;

    function createsimplestorage() public{
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listofSimpleStorage.push(newSimpleStorage);
    }

    function sfstore(uint256 _SimpleStorageindex, uint256 _SimpleStoragenumber) public {
        SimpleStorage mysimpleStorage = listofSimpleStorage[_SimpleStorageindex];
        mysimpleStorage.store(_SimpleStoragenumber);
    }

    function sfget(uint256 _SimpleStorageindex) public view returns(uint256) {
        SimpleStorage mysimpleStorage = listofSimpleStorage[_SimpleStorageindex];
        return mysimpleStorage.retrieve();

    }

}