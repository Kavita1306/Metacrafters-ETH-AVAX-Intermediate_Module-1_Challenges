// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EventExample {

  event NewUser(address indexed _user);
  event Deposit(address indexed _user, uint256 _amount);
  event Withdrawal(address indexed _user, uint256 _amount);

  constructor() {
    emit NewUser(msg.sender);
  }

  function deposit(uint256 _amount) public {
    emit Deposit(msg.sender, _amount);
  }

  function withdraw(uint256 _amount) public {
    emit Withdrawal(msg.sender, _amount);
  }

}
