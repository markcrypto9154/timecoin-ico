pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract TIMECOIN is BurnableToken, UpgradeableToken {

  string public name = "timecoin";
  string public symbol = "TMC";
  uint public decimals = 0;
  uint public INITIAL_SUPPLY = 10000 * (10 ** decimals);

  function TIMECOIN(address _owner)  UpgradeableToken(_owner) {
    name = "TIMECOIN";
    symbol = "TMC";
    totalSupply = 2;
    decimals = 0;

  function TIMECOIN() public {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    balances[_owner] = totalSupply;
  }
}
