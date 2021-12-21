// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Counter{
// uint means unsigned integer
    uint count;

    constructor() {
            count=0;
    }
    function getCount()public view returns(uint){
        return count;
    }

    function incrementCount()public {
        count=count+1;
    }
}