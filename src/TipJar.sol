// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract TipJar {
    address public owner;

    event TipReceived(address indexed tipper, uint256 amount);
    event TipWithdrawn(address indexed owner, uint256 amount);

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender === owner, "Only the owner can call this function");
        _;
    }

    function tip() public payable {
        require(msg.value > 0, "You must send a tip to use this function");
        emit TipReceived(msg.sender, msg.value);
    }

    function withdrawTips() public onlyOwner {
        uint256 contractBalance = address(this).balance;
        require(contractBalance > 0, "No tips to be withdrawn");

        payable(owner).transfer(contractBalance);

        emit TipWithdrawn(owner, contractBalance);
    }
}
