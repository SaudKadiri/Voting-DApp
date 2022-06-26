pragma solidity ^0.5.16;

// Declare contract 
contract Election {
    // Candidate attributes
    string public candidate;
    // Constructor
    constructor() public {
        candidate = "candidate1";
    }
}