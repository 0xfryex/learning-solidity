// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0; //solidity version

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

// example if the smart contract have many contract
contract Simplestorage2{}
contract Simplestorage3{}
contract Simplestorage4{}


//  types of data in solidity that are often used:  
// 1. string is like a character alphabet
// 2. int(integer) its a number that can be plus or minus. example 1,-4,10,-29,etc.
// 3. uint(unsigned integer) like a integer but it can't be minus and must be plus like 1,2,3,etc.
// 4. boolean that type data only have a value true or false
// 5. address is a type data have a form address from a public address,smart contract, token, etc.



