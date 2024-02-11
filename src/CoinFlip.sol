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
    event Result();
}
