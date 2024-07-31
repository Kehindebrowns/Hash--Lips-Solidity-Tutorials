// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Lesson_6{
    // if else statement
   uint256  public revealState = 0;
    bool  public isNowRevealed = false;
    string public status = "Not yet revealed";
   function addToRevealState() public {
     revealState++;
   }
   function isRevealed() public {
     if(revealState >= 3){
      isNowRevealed = true;
        status = "Almost there !";
     }
      else{
   status = "Still not revealed";
      }
   }
   // A LOOP
    funtion myLoop() public pure {
      // it runs the amout of times the function logic will . identifier , condition , incremment or decrement
      for(uint256 i = 0 ; i < 5 ; i++){
       if(i == 3){
        break;
       }
       if(i == 2){
        continue; // skips to the next iteration
       }
      }  
    }
    // MAPPING : A LIBARY DATA HOLDER ALSO INDEXING OF DATA ARE NOT ARRAYS
    // example mapping (address => uint) name;
   // key = uint256
   // uint = address is the one that you can reterive update and change 
   mapping (uint256 => address) public nfts;
   uint256 public counter = 0;
  // _id is the parameter
    function getOwnersNft(uint256 _id) public view returns(address){
     return  nfts[_id];
    }
    // increase the nfts value 
    function mintNFTs(address _address) public{
        nfts[counter] = _address;
        // TO ICREMENT THE NUMBER OF COUNTS INTHE PROGRAM
        counter++;
    }
   // ARRAYS
   // state var
   uint256[] public arr_1;
   uint256[] public arr_2 = [3 ,2, 4]; // 0 = 3 , 1 = 2 , 2 = 4
   uint256[5] public arr_3;
  // arr_1.lenght; pld assign it
   arr_2.push(9);
   //arr_2.pop() it removes the particular value
   delete arr_2[0];
    function getValueofIndex(uint256 _index) public view returns(uint256){
     return  arr_2[_index];
    }
    // increase the nfts value 
    function addValue(uint256 _value) public view{
         arr_2.push(_value)
        // TO ICREMENT THE NUMBER OF COUNTS INTHE PROGRAM
       // counter++;

       //ENUMS
      // uint8 public rarity = 0; // 0 is original 1 rare 2 super rare
        enum Rarity {
            original,
            rare,
            super_rare
        }
         Rarity public rarity; // vara

         constructor(){
          rarity = Rarity.rare;  
         }
    function makeSuperRare() public{
          rarity =Rarity.super_rare;
    }
}
}