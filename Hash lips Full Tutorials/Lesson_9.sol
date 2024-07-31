// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.13;

contract Lesson_9{
   uint56 maxAmount  = 100;
   function updatedMax() public {
      maxAmount = 50;
   }
   
     function myPureFunc(uint256 _x , uint256 _y) public view returns(uint256 xy){
       
        require(_x < _y , "X is bgger than Y");
              checkMax();
              // require : inside a fucnction or if statement to do checks it always need to pass
             return _x + _y;
     }
     function myPureReveretFunc(uint256 _x , uint256 _y) public pure returns(uint256 xy){
       if(_x ==  10){
         revert("X is 10");
       }
             return _x + _y;
     }
      function checkMax() internal view{
         assert(maxAmount == 100);
      }     
}