// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;
// open sea
// interface can also inherit from other interface
// no constructors and state variable
interface ICounter {
    function count()external view returns(uint256);
     function addToCount() external;
}
contract Lesson_13 is ICounter{
   
   // IMPLEMENT THE ADD COUNT AND COUNTB internal function
uint256 counter = 0;
 function count()external view  override returns(uint256){
    return counter;
 }
   function addToCount() external override{
    counter++;
   }
// PAYABLE  it recives ether
   address payable public myAddress;
// constructors can be payable
   constructor() payable{
      myAddress = payable(msg.sender);
   }
    function deposit() public payable{}
      //payable(msg.sender).transfer(10000000);
      function getThisContractBalance() public  view returns(uint256){
         uint256 amount = address(this).balance;
         return amount;
      }
    // to get the ether out to pay in the ether
    receive() external payable{}
    // when a person make a transaction with out including any body

    fallback() external payable{}
    // if the data was specifed 
   // we have to add withdraw function  
     // how to send ether transfer , send or call
  function transferEther(address payable _user) public payable{
      _user.transfer(msg.value);
     }
     
}