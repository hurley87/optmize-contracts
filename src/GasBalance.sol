// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

library GasBalance {
    function initializeBalance(
        mapping(address => uint256) storage balances,
        address sender,
        uint256 _totalSupply
    ) external {
        balances[sender] = _totalSupply;
    }

    function getBalance(
        mapping(address => uint256) storage balances,
        address _user
    ) external view returns (uint256) {
        return balances[_user];
    }
} 