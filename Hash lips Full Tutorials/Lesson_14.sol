// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Lesson_14{
    // MyContractCall
    uint256 public age = 20;

    function getAge() public view returns(uint256 _age){
        return age;
    }

}
// we will need the abi and the address of the contact
contract MyOtherContract {
   function getAgeFromOtherContract(address _contractAddr ) public view returns(uint256){
    MyOtherContract other = MyOtherContract(_contractAddr);
    uint256 age = other.getAge();
    return age; 
   }
   
}