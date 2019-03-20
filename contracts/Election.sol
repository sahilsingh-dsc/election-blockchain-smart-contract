pragma solidity >=0.4.22;

contract Election {
    //Model a Candidate

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    // Store Candidates
    // Fetch Candidates
    mapping(uint => Candidate) public candidates;
    // Store Candidates Count
    uint public candidatesCount;



    string public candidate;

    constructor () public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate (string memory _name) private {
        candidatesCount ++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}