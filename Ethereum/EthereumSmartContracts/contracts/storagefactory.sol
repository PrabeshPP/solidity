// SPDX-License-Identifier: MIT

pragma solidity ^0.8.1;
import "./simple_storage.sol"; //importing the simple_storage file!

contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;
        function createSimpleStorageContract()public{
            SimpleStorage simpleStorage=new SimpleStorage();
            simpleStorageArray.push(simpleStorage);

        }

    function sdStore(uint256 _simpleStorageIndex,uint256 _simpleStorageNumber)public{
        SimpleStorage simpleStorage=SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        simpleStorage.store1(_simpleStorageNumber);
    }

    function sfGet(uint _simpleStorageIndex)public view returns(uint256){
        SimpleStorage simpleStorage=SimpleStorage(address(simpleStorageArray[_simpleStorageIndex]));
        return simpleStorage.returnFavouriteNumber();
    }
}
