// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;
 contract MyContract1{


    function isEvenNumber(uint _number)public pure returns(bool) {
         if(_number % 2==0){
             return true;
         }else{
             return false;
         }
     
    }
 }