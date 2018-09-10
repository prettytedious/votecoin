/**
 * Created by braddavis on 9/9/18.
 */
var Ballot = artifacts.require("./Ballot.sol");

contract("Ballot", function(accounts){

  it("initializes with two candidates", function(){
    return Ballot.deployed().then(function(instance){
      return instance.candidatesCount();
    }).then(function(count){
      assert.equal(count, 2);
    });
  });

});