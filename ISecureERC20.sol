// SPDX-License-Identifier: MIT
// https://github.com/ElPettego/SecureERC20 

pragma solidity ^0.8.19;

interface ISecureERC20 {
    /**
     * @dev Standard ERC20 interface.
     * https://github.com/OpenZeppelin/openzeppelin-contracts/master/contracts/token/ERC20/IERC20.sol    
     * 
     */
    
    event Transfer(address indexed from, address indexed to, uint256 value);

    event Approval(address indexed from, address indexed spender, uint256 value);

    function totalSupply() external view returns (uint256);

    function balanceOf(address account) external view returns (uint256);

    function transfer(address to, uint256 amount) external returns (bool);

    function allowance(address owner, address spender) external view returns (uint256);

    function approve(address spender, uint256 amount) external returns (bool);

    function transferFrom(address from, address to, uint256 amount) external returns (bool);

    // ISecureERC20
    /**
     * @dev Emitted when the token is created;
     */
    event Creation(address creator);
    
    /**
     * @dev Returns the name of the token.
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() external view returns (string memory);

    /**
     * @dev Returns the decimals of the token.
     */
    function decimals() external view returns (uint8);

    /**
     * @dev Returns the address of the owner of the token.
     */
    function owner() external view returns (address);

    /**
     * @dev Returns the address of the creator of the token.
     */
    function creator() external view returns (address);

    /**
     * @dev Returns the amount of tokens held by the owner.
     */
    function ownerBalance() external view returns (uint256);

    /**
     * @dev Returns the amount of tokens held by the creator.
     */
    function creatorBalance() external view returns (uint256);

    /**
     * @dev Returns the buy tax value. If the value of the tax is not the same as the one checked with 
     * a honeypot checker the contract could be not secure. 
     * 
     * Consider that honeypot checkers return floating point values and this function returns a integer.  
     */
    function buyTax() external view returns(uint8);

    /**
     * @dev Returns the sell tax value. If the value of the tax is not the same as the one checked with 
     * a honeypot checker the contract could be not secure.   
     *
     * Consider that honeypot checkers return floating point values and this function returns a integer.
     */
    function sellTax() external view returns(uint8);    



}