// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Lesson_11{
    //  Event
    string public name;

    constructor(string memory _name){
        name = _name;
    }
  event CreatedNFT( address indexed user,uint256  _id , uint256 _dna);

   function createNFT(uint256 _id , uint256 _dna) public {
    emit CreatedNFT(msg.sender ,_id ,  _dna);
   }
}
// how to call another function which is the contrctor to be able to work effectively
contract MySecondContract is Lesson_11{
    constructor(string memory _name) MyConstructor(_name){};
}