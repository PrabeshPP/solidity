// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;


contract HotelRoom{

    enum Statuses{Vacant,Occupied}
    Statuses currentStatus;
    address payable public owner;
    event Occupy(address _occupant,uint _value);
    
    constructor(){
        owner=payable(msg.sender);
        currentStatus=Statuses.Vacant;
    }
    
    modifier onlyWhilevaccant(){
        require(currentStatus==Statuses.Vacant,"Currently occupied");
        _;

    }
    modifier costs(uint _amount){
        require(msg.value>=_amount,"Not enough Ether Provided");
        _;
    }

    receive() external payable onlyWhilevaccant costs(2 ether){
        currentStatus=Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender,msg.value);
        
    }
}
