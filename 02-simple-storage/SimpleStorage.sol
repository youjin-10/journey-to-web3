// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleStorage {
    uint256 simpleNum;
    string public simpleStr;
    bool public isSimple;
    People public person = People({favoriteNumber: 2, name: "pikachu"});
    People[] public people; // dynamic size
    mapping(string => uint256) public nameForFavoriteNumber;

    // new type "People"
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    constructor(uint256 _num, string memory _str, bool _isSimple) {
        simpleNum = _num;
        simpleStr = _str;
        isSimple = _isSimple;
    }

    function updateSimpleNum(uint256 _num) public {
        simpleNum = _num;
    }

    function updateSimpleStr(string calldata _str) public {
        simpleStr = _str;
    }

    function increaseSimpleNum() public {
        simpleNum += 1;
    }

    function retrieveSimpleNum() public view returns (uint256) {
        return simpleNum;
    }

    function addPerson(string calldata _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameForFavoriteNumber[_name] = _favoriteNumber;
    }
}
