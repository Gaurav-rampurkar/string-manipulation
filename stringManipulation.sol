// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract MyContract { 
    
    //TO RETURN THE LENGHT OF STRING 
    
    function length(string calldata str) external pure returns(uint ) {         
        return bytes(str).length ;
    }

//.TO CONCATINATE TWO STRINGS 

    function concatinate(
        string calldata a,
        string calldata b)        
        external
        pure 
        returns(string memory)
        {
            return string (abi.encodePacked(a,b));
        }
        
//TO REVERSE STRING 

    function reverse (string calldata _str ) external pure returns (string memory){
       bytes memory  str= bytes(_str);
       string memory tmp= new string(str.length);
       bytes memory _reverse = bytes(tmp);
       
       for (uint i=0; i< str.length; i++){
           _reverse [str.length-i-1]= str[i];
       }
       return string(_reverse);
    }  
    
//TO COMPARE STRING 

    function compare(
       string calldata a,
       string calldata b)
       external
       pure 
       returns (bool){
           return keccak256(abi.encodePacked(a))==keccak256(abi.encodePacked(b));
       }
}
