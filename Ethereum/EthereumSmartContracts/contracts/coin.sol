// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.1;

contract Coin{
    address public minter; // declare a state variable of type address
    mapping(address=>uint) public balances;

    //constructor only runs one ,so we don't require public 
    constructor(){
        minter=msg.sender;
    }
    event Sent(address from,address to,uint amount); // it emits the state when the sent event is called 
    
    // this function would allow us to create coin and only the owner of the contract can send the coin to a receiver address
    function mint(address receiver,uint amount)public{
        require(msg.sender==minter);
        balances[receiver]+=amount;


    }

    //it wil return error 
    error InsufficientBalance(uint requested,uint available);

    //this function would allow anyone to send the created coin to the receiver address,only if the user has a coin
    function send(address receiver,uint amount)public{
        if(amount>balances[msg.sender])
        revert InsufficientBalance({
            requested:amount,
            available:balances[msg.sender]
        });

        balances[msg.sender]-=amount;
        balances[receiver]+=amount;
        emit Sent(msg.sender, receiver, amount);

    }



}