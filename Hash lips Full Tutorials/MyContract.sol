//SPDX-Lisence-Identifier:MIT
pragma solidity 0.8.13;
// Normal line 
/// Nastep Format
// lesson 1
 contract MyContract{
    string public name = "Kehinde";
    function updateName(string memory _newName) public{
        name = _newName;
    }
 }