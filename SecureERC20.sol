// SPDX-License-Identifier: MIT
// https://github.com/ElPettego/SecureERC20 

pragma solidity ^0.8.19;

import "./ISecureERC20.sol";

abstract contract SecureERC20 is ISecureERC20 {    
    string  private _name; 
    string  private _symbol;
    uint8   private _decimals;
    uint256 private _totalSupply;
    address private _owner;
    address private _creator;

    constructor(string memory name_, string memory symbol_, uint8 decimals_) {        
        _name     = name_;
        _symbol   = symbol_;
        _decimals = decimals_;
        _creator  = msg.sender;
        _owner    = msg.sender;
        emit Creation(msg.sender);
    }

    function name() public view virtual returns (string memory) {
        return _name;
    }

    function symbol() public view virtual returns (string memory) {
        return _symbol;
    }

    function decimals() public view virtual returns (uint8) {
        return _decimals;
    }

    function totalSupply() public view virtual returns (uint256) {
        return _totalSupply;
    }

    function owner() public view virtual returns (address) {
        return _owner;
    }

    function creator() public view virtual returns (address) {
        return _creator;
    }




}