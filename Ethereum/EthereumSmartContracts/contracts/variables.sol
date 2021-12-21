// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract MyContract{
    //state variable
    uint public myUint=1; //uint is unsiignedd integer
    int public myInt=1;
    uint256 public myUint256=100000;
    uint8 public myUint8=20;
    //string
    string public myString="Hello World";
    bytes32 public myBytes="Hello World";

    //address
    address myAddress=0xd7Ca4e99F7C171B9ea2De80d3363c47009afaC5F;

    struct MyStruct{
        uint id;
        string ballot;
    }

    MyStruct public myStruct=MyStruct(1,"Hello World");

    //Local Variable
    function getValue()public pure returns(uint){
        uint value=1;
        return value;
    }
}