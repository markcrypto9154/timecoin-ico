pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TIMECOIN is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function TIMECOIN(address _owner)  UpgradeableToken(_owner) {
    name = "TIMECOIN";
    symbol = "TMC";
    totalSupply = 2,000,000,000,000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}
