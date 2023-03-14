// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract MyToken {
    string public Tname;
    string public Tabbrv;
    uint public totalSupply;

    mapping(address => uint) public balance;

    constructor(string memory _name, string memory _abbrv, uint _totalSupply) {
        Tname = _name;
        Tabbrv = _abbrv;
        totalSupply = _totalSupply;
    }

    function mint(address _toadd, uint _value) public {
        totalSupply += _value;
        balance[_toadd] += _value;
    }

    function burn(address _fromadd, uint _value) public {
        if (balance[_fromadd] >= _value) {
        totalSupply -= _value;
        balance[_fromadd] -= _value;
        }
        // else {
        // revert("Not enough balance to burn");
        // }
    }
}
