const NFTtest = artifacts.require("NFTtest");

/*
 * uncomment accounts to access the test accounts made available by the
 * Ethereum client
 * See docs: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-javascript
 */
contract("NFTtest", function (/* accounts */) {
  it("should assert true", async function () {
    await NFTtest.deployed();
    return assert.isTrue(true);
  });
});
