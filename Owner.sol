pragma solidity >=0.7.0 <0.9.0;
contract Owner{
    address public owner;
    
    constructor(){
        owner = msg.sender;
    }
    
    modifier onlyOwner(){
        require(msg.sender == owner, "Only sender can assert");
        _;
    }
    
    modifier checkAddress(address[] memory listAddress, address _address){
        for(uint i = 0 ; i < listAddress.length ; i++){
            if(_address == listAddress[i]){
                revert("Account is exit");
            }
        }
        _;
    }
}
