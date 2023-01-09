pragma solidity ^0.6.0;

contract Counter {
    uint public count = 0;

    // Konstruktor se pokrece samo jednom kada se Ugovor postavi na Blockchain: 
    // constructor() public {
    //     count = 0;
    // }

    // function getCount() public view returns(uint) {
    //     return count;
    // }
    function incrementCount() public  {
        count = count + 1;
    }
}