// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Ballot{

    //the owner of this smart contract is the chairperson for this voting system
address public chairperson;

struct Voter{
    uint weight;
    bool voted;
    address delegate;
    uint vote;
}

struct Proposal{
    bytes32 name;
    uint voteCount;
}

}