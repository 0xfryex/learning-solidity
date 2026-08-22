// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage{
    uint256 myfavouritenumber = 0;

    struct person {
        string name;
        uint256 favouritenumber;
    }

  person[] public listofperson;

  mapping(string => uint256) public nameTomyfavouritenumber;

    function store(uint256 _favouritenumber) public{
        myfavouritenumber = _favouritenumber;}
    
    function adding(uint256 _inputyournumber) public {
        myfavouritenumber = _inputyournumber + myfavouritenumber;
    }

    function retrieve() public view returns(uint256){
        return myfavouritenumber;
    }

    function add_people(string memory _name, uint256 _favouritenumber) public {
        listofperson.push( person(_name, _favouritenumber));

        //function for mapping use
        nameTomyfavouritenumber[_name] = _favouritenumber;
    }

 }
