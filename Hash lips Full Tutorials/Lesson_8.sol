// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Lesson_8 {
   uint256 myUint = 42;
   string myString = "Daniel";
    bool myBool = true;
    uint256[] myArr = [1, 2, 3];

// myfunc need parameters : arethings given to a function on the call of the function  some do not need
    function myPureFunc(uint256 _x , uint256 _y) public pure returns(uint256){
        //loops if statements , signatures view read pure  override  functions
       // Pure do not detetmine, touch  the Block chain it does not affect the state variable
       // it does not do as much
         return  _x + _y;
    }
   //  function it provide an eleborate means to create an abi
   // View : it depend on data outside from the function
    function myViewFunction( ) public view returns(string memory) {
       return myString;   
    }
     function MyUpateFunc() public returns(string memory){
           // call a function inside of it self
           myString = "Kehinde Browns";
           string memory saveString = myViewFunction();
           myString = "Kehinde ";
           return  saveString;
     }
      function myReturnsFunc() internal view returns(uint256 , string memory , bool , uint256[] memory){
      return   (myUint , myString , myBool ,myArr);
      }
}