// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewPurePayable {

  // Pure function
  function getSum(uint256 a, uint256 b) public pure returns (uint256) {
    return a + b;
  }

  // Pure function
  function factorial(uint256 n) public pure returns (uint256) {
    if (n == 0) {
      return 1;
    } else {
      return n * factorial(n - 1);
    }
  }

  // Payable function
  function sendEther(address payable recipient, uint256 amount) public payable {
    recipient = payable(recipient);
    recipient.transfer(amount);
  }

}
