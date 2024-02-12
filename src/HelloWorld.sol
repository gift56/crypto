// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import "@thirdweb-dev/contracts/extension/ContractMetadata.sol";


contract HelloWolrd {
    string public message;

    constructor() {
        message = "Hello world!";
    }

    function getMessage() public view returns (string memory) {
        return message;
    }
}
