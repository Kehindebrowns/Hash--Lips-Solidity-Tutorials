// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.13;

contract Lesson_9{
    // modiffier provide a require help to tell function what they can do and what they can not do

    uint256 myNum = 0;
    bool Paused = false;
    address public owner;
   modifier isNotPaused(bool _bypass) {
    
    if (_bypass == true) {
      require(Paused == false, "Contract is paused");  
    }
    _;
   }

   constructor(){
    owner = address(msg.sender);
   }
     modifier onlyOwner(){
require(Paused == false , "Contract is paused");
  _;
     }
    function setPaused()  public  {
         Paused = true;
    }

    function addToNum() public isNotPaused(true) onlyOwner  {
       //require(Paused == false , "Contract is paused");
        myNum++;
    }
    function subNum() public isNotPaused(false) onlyOwner{
         
        // require(Paused == true , "Contract will wbe dissallowd");
         myNum--;
    }    

}