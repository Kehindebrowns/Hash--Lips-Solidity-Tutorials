// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract Lesson_7{
    // a struct is object value that you can maipulate 

    struct NFT {
        string name;
        uint256 dna;
        // we can add enum to the struct
    }
    mapping (uint256 => NFT)  public nftName;
     
     NFT[] public nftList;

     function addNFT(string memory _name, uint256 _dna) public {
      NFT memory newNFT;
      newNFT.name = _name;
      newNFT.dna = _dna;
       nftList.push(newNFT);   
     }

     function addNFT(NFT[]calldata _nfts) public{
       nftList = _nfts;
     } 
     function getnftName(uint256 _index) public view returns(string memory){
        return nftList[_index].name;
}
    function  updateNFTWithStorage(uint256 _index , string memory _name) public {
        NFT storage nftToBeUpdated = nftList[_index];
        nftToBeUpdated.name = _name;
    }
    function updateNFTWithMemeory(uint256 _index , string memory _name) public  {
       NFT memory nftToBeUpdated = nftList[_index];
       nftToBeUpdated.name = _name;
       nftList[_index] = nftToBeUpdated;   
    }
     // DATA LOCATION STORAGE MEMEORY CALLBACK

     
}