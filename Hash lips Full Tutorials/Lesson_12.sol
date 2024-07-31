// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.13;
// INHERITANCE WHEN A SMART ONTRACT GET THE FUNCTION METHOD THAT WILLBE ABLE TO HAND OVER TO THE OTHER SMART CONTRACT   

contract A{
 string internal name = "Hash Lips";
}

contract B is A  {
   function getName() public view  virtual returns(string memory) {
      return name;
   } 
}

contract C is B{}