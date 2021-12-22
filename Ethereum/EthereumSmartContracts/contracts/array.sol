// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract MyContract{
    //array of unsigned integer
    uint[] public unitArray=[1,2,3];
    string[] public stringArray=["apple","banana","carrot"];
    string[] public myArray;
    string[] public values;

    function addValue(string memory _value)public{
        values.push(_value);
    }





}