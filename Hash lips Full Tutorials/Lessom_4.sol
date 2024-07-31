// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Lesson_4{
    // OPERATORS
    uint8 public a = 1;
    uint8 public b = 2;
    uint8 public c = 3;
    uint8 public newVal;
    bool myBool = false;

     
    function example_1() public{
     a = a* b + c;
     a++;
     b--;
     c % b;// it takes the modulus the remainder of the value
     b = b * c;
    
    
    }

      /// @notice Assignment operators
   function example_2() public {
   newVal = a* b + c;
     b *= c;
}
 /// @notice Comparism Operators (== , != ,<, > )
 function example_3() public view {
    bool  result = false;
   
       if (a < b) {
          result = true;
    } if(a <= b) {
      result = true;
    }
    if(a == b){
        result = true;
    }
    if(a != b){
        result = true;
    }

 }
  /// @notice Logical Operators (&& , ! , ||)
    function example_4() public{
      bool results_ = false;
      if(a < b && c){
        results_ = true;
      } 
      if (!myBool) {
        result = true;
      }
    }
    results_  == results_;
     ///@notice Conditional Operator  some thing like a teneray operator
     function example_5() public view {
       // uint8 results = a < b ? 100 : 50;
     }
}
