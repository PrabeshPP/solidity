// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract SimpleStorage{

    // this will get initialized to 0!
    uint256 favouriteNumber;
    string myname;

    struct People{
        string  name;
       uint256 age;
    }

    People public person=People({name:"Prabesh Bista",age:46});

    function store(uint256 _favouriteNumber,string memory name)public{
        favouriteNumber=_favouriteNumber;
        myname=name;

    }

    

    function returnFavouriteNumber()public view returns(uint256){
        return favouriteNumber;
    } 

    function returnName()public view returns(string memory){
        return myname;
    }
}