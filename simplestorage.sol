// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    // Basic types: boolean,unit,address,bytes,
    bool hasFacouriteNumber=false;
    uint256 favouriteNumber=87;
    uint256[] listofFavouriteNumbers;

    struct Person {
        uint favouriteNumber;
        string name;
    }

    Person public myFriend=Person(7,"Debopriya");
    //dynamic array
    Person[]public listofPeople;
    uint256 favouriteNO; // favouriteNo gets initialised as 0 when not done anything
    // int favouriteNumber1=-88;
    // string favouriteNumber2="star this repo";
    // address myaddress=0xB155C8e122D30EA2153A90cF2C4F61CaA5d04F52;
    // bytes32 favouriteBytes32="cat";
    function store(uint256 _favouriteNO)
    public{
 favouriteNO=_favouriteNO;
    }
   function retrive() public view returns (uint256){
    return favouriteNO;
   }
   function addPerson(string memory _name,uint _favouriteNumber) public {
    listofPeople.push(Person(_favouriteNumber, _name));
   }
}