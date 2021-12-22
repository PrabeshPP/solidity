// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract MapContract{
mapping(uint=>string) public names;
constructor(){
    names[1]="Adam";
    names[2]="Prabesh";
    names[3]="Abhinav";
    names[4]="Carlo";
}



}