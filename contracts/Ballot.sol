pragma solidity ^0.4.24;

contract Ballot {
    //Store Candidate
    //Read Candidate

    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }

    mapping(uint => Candidate) public candidates;

    uint public candidatesCount;

    //Construtor
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }


    function addCandidate(string _name) private {
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }

//    function getCandidate(uint _id) public {
//        return candidates[_id];
//    }
}
