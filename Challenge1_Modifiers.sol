// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AdminOnly {

  address public admin;

  constructor(address _admin) {
    admin = _admin;
  }

  modifier onlyAdmin() {
    require(msg.sender == admin, "Only the admin can access this function.");
    _;
  }

  function someFunction() public onlyAdmin {
    // Only the admin can call this function.
  }

  function anotherFunction() public onlyAdmin {
    // Only the admin can call this function.
  }
}
