// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
 contract MyContract1{

uint[] public numbers=[1,2,3,4,5,6,7,8,9,10];

address public owner;
constructor(){
    owner=msg.sender;
}

function countEvenNumbers() public view returns(uint){
    uint count=0;
    // for loop
    for(uint i=0;i<numbers.length;i++){
        if(isEvenNumber(numbers[i])){
            count++;
        }

    }

    return count;
}

    function isEvenNumber(uint _number)public pure returns(bool) {
         if(_number % 2==0){
             return true;
         }else{
             return false;
         }
     
    }
    //checking if the deployer is owner or not for the contracts
    function isOwner() public view returns(bool){
        if(msg.sender==owner){
            return true;

        }else{
            return false;
        }
    }
 }