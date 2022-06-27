pragma solidity ^0.5.16;

// Declare contract 
contract Election {
    // Candidate Model
    struct Candidate {
        uint id;
        string name;
        uint vote_count;
    }
    // Map / dictionary to map an id to it's corresponding candidate
    mapping(uint => Candidate) public candidates;
    uint public candidateCount;
    // Constructor
    constructor() public {
        candidateCount = 0;
        addCandidate('Alice');
        addCandidate('Bob');
    }

    function addCandidate(string memory _name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }
}