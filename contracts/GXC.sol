pragma solidity ^0.4.16;

import "./StandardToken.sol";
import "./Ownable.sol";


/**
 *  GXC token contract.
 */
contract GXC is StandardToken, Ownable {
  string public constant name = "Game X Coin";
  string public constant symbol = "GXC";
  uint public constant decimals = 18;


  // Constructor
  function GXC() public {
      totalSupply = 1000000000000000000000000000;
      balances[msg.sender] = totalSupply; // Send all tokens to owner
  }

  /**
   *  Burn
   */
  function burn(uint _value) onlyOwner public returns (bool) {
    balances[msg.sender] = balances[msg.sender].sub(_value);
    totalSupply = totalSupply.sub(_value);
    Transfer(msg.sender, 0x0, _value);
    return true;
  }

}






