//SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

//multiple inheritance
contract Ownable{
    address owner;
    constructor(){
        owner=msg.sender;
    }
    modifier onlyOwner(){
    require(msg.sender==owner,"you must be owner");
    _;

}
}

contract SecrectVault{
    string secrect;

    constructor(string memory _secrect){
        secrect=_secrect;

    }

    function getSecrect() public view returns(string memory){
        return secrect;
    }
}

contract Mycontract is Ownable{
    string secrect;
    address secrectVault;
    constructor(string memory _secrect){
     SecrectVault _secrectVault=new SecrectVault(_secrect);
    secrectVault=address(_secrectVault);

        super;
    }

    function getSecrect()public view onlyOwner returns(string memory){
        SecrectVault _secrectVault=SecrectVault(secrectVault);
        return _secrectVault.getSecrect();

    }


}