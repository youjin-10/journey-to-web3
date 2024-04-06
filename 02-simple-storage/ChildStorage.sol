// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

import "./SimpleStorage.sol";

//note: in order to remove error message, constructor of SimpleStorage should me removed
contract ChildStorage is SimpleStorage {
    function updateSimpleNum(uint256 _num) public override {
        simpleNum = _num + 5;
    }
}
