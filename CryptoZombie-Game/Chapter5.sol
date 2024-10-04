// SPDX-License-Identifier: MIT 
pragma solidity 0.8.20;

contract ZombieFactory {

    uint dnaDigits = 16;
    uint dnaModulus = 10 ** dnaDigits;

    struct Zombie {
        string name;
        uint dna;
    }

    

}
