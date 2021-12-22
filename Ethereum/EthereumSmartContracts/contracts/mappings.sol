// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract MapContract{
mapping(uint=>string) public names;
mapping(uint=>Books) public books;
//nested mapping
mapping(address=>mapping(uint=>Books)) public myBooks;

struct Books{
    string title;
    string author;
}
constructor(){
    names[1]="Adam";
    names[2]="Prabesh";
    names[3]="Abhinav";
    names[4]="Carlo";
}

function addBooks(uint id,string memory _title,string memory _author)public{
        books[id]=Books(_title,_author);
}

function addMyBooks(uint _id,string memory _title,string memory _author) public{
    myBooks[msg.sender][_id]=Books(_title,_author);
}


}