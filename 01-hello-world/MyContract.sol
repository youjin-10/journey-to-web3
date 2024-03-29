// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract MyContract {
    string public str = "hiya world!";

    function updateStr(string memory _updateString) public {
        str = _updateString;
    }
}
