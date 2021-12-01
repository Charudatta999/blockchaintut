//SPDX-LICEN
pragma solidity ^0.6.0;

contract SmipleStorage{

    uint256  favouriteNumber;

    function store(uint256 _favNumber) public{
        favouriteNumber = _favNumber;
    }

    struct People{
        uint256 favouriteNumber;
        string name;
    }

    People public person = People({favouriteNumber:1,name:"Charudatta"});

    People[] public people;
    //create map
    mapping(string=> uint256) public nameTOFavNum;

    function addPerson(string memory _name,uint256 _favNumber) public {
        people.push(People({favouriteNumber: _favNumber,name:_name}));

    }

}