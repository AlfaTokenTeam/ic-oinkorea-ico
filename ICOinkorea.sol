pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract ICOinkorea is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function ICOinkorea(address _owner)  UpgradeableToken(_owner) {
    name = "ICOinkorea";
    symbol = "ICOIN";
    totalSupply = 1000000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}