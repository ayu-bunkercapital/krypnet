pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/PausableToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";
import "openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";


contract KrypNetwork is PausableToken, MintableToken, BurnableToken {
    string public name = "Kryp Token";
    string public symbol = "KRYP";
    uint public decimals = 18;
    uint public INITIAL_SUPPLY = 100000000000 * (10 ** uint256(decimals));

    constructor() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        emit Transfer(0x0, msg.sender, INITIAL_SUPPLY);
    }
}

