//SPDX-Lisence-Identifier:MIT
pragma solidity 0.8.13;

contract Lesson_3{
       uint256 public number = 20;
       bool  private paused = true;   
      uint256  internal time = block.timestamp;
      function myFunc() public  view {
      // uint256 localNumber = 20;
        // bool localPasued = true;
         // address myAddress = msg.sender;
      } 
}
// inheitance

contract Lesson_3_ is Lesson_3{
       uint256  public theAwsomeVar = 100; 
       uint256 public Thetime = time;
        bool public paused = false; 
}