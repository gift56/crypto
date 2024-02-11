// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract CoinFlip {
    enum CoinSide {
        HEADS,
        TAILS
    }
    enum FlipResult {
        WIN,
        LOSE
    }
    event Result(
        address indexed player,
        CoinSide choosenSide,
        FlipResult result
    );

    function flipCoin(CoinSide choosenSide) public {
        uint256 randomNumber = uint256(keccak256(abi.encodePacked(block.timestamp,msg.sender))) % 2;
    }
}
