//SPDX-Lisence-Identifier:MIT
pragma solidity 0.8.13;
// lesson 2
 contract Lesson_2{
    bool public myBoolean;

    uint256 public myUnit = 12345;
    uint32  public myUnit32 =1234;
    uint16  public myUnit16 = 12;
    uint8 public myUnit8 = 1;

    int256 myInt = 12345;
    int32 myInt32 =1234;
    int16 myInt16 = 12;
    int8 myInt8 = 1;

// type casting
int256 public MyInt256 = int256(myInt16);
    address public myAddress = address(0x0000000000000000000000);
    address payable myContractAddress = payable(0x00000000000000000000);
    address myContractAddress_ = address(this);
    uint256 publicBalance = myContractAddress.balance;

    // defualt of address is a fucntion of 0x000000000
 }