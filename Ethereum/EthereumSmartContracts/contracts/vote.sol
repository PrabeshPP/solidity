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

mapping(address=>Voter) public voters;

Proposal[] public proposal;

constructor(bytes32 proposalNames){

chairperson=msg.sender;
voters[chairperson].weight=1;
for(uint i=0;i<proposalNames.length;i++){
    proposal.push(Proposal({
        name:proposalNames,
        voteCount:0
    }));
}
}


}