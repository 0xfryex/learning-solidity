 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract donation{

    address public immutable owner;

    address[] public funder;

    mapping (address funder => uint256 amountfunded) public AddressToAmountFunded;

    constructor(){
        owner = msg.sender;
    }

    function fund() public payable {
     if (AddressToAmountFunded[msg.sender] == 0){
        funder.push(msg.sender);
     }
        AddressToAmountFunded[msg.sender] += msg.value;
        }

    function withdraw(uint256 _amount) public {
        //convert from wei to ether
        uint256 AmountInWei = _amount * 1e18;

        //i will apply use CEI (Check, Effect, Interact) security technuiqe
        //checks
        //validation the owner
        require(msg.sender == owner, "you are not owner");
        //validation the balance
        require(address(this).balance >= AmountInWei, "your balance is not enough!!!");

        //effect

        //interact
        //send the eth
        (bool callsuccess, ) = payable(msg.sender).call{value: AmountInWei}("");
        //to ensure the transaction is success
        require(callsuccess, "transaction is failed");
        }
    }