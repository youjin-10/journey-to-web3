// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./SimpleStorage.sol";

contract AnotherStorage {
    SimpleStorage[] simpleStorageArray;

    constructor() {
        SimpleStorage simpleStorage = new SimpleStorage(10, "hello", true);
        simpleStorageArray.push(simpleStorage);
    }

    function store(uint256 _simpleStorageIndex, uint256 _simpleNum) public {
        // address of the contract
        // ABI of the contract (Application Binary Interface)
        SimpleStorage simpleStorage = SimpleStorage(
            simpleStorageArray[_simpleStorageIndex]
        );
        simpleStorage.updateSimpleNum(_simpleNum);
    }

    function get(uint256 _simpleStorageINdex) public view returns (uint256) {
        SimpleStorage simpleStorage = SimpleStorage(
            simpleStorageArray[_simpleStorageINdex]
        );
        return simpleStorage.retrieveSimpleNum();
    }
}
