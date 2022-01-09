// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity >=0.8.0;

interface IanyFXS {
  function DOMAIN_SEPARATOR() external view returns (bytes32);
  function PERMIT_TYPEHASH() external view returns (bytes32);
  function Swapin(bytes32 txhash, address account, uint256 amount) external returns (bool);
  function Swapout(uint256 amount, address bindaddr) external returns (bool);
  function TRANSFER_TYPEHASH() external view returns (bytes32);
  function allowance(address, address) external view returns (uint256);
  function approve(address spender, uint256 value) external returns (bool);
  function approveAndCall(address spender, uint256 value, bytes calldata data) external returns (bool);
  function balanceOf(address) external view returns (uint256);
  function burn(address from, uint256 amount) external returns (bool);
  function changeMPCOwner(address newVault) external returns (bool);
  function changeVault(address newVault) external returns (bool);
  function decimals() external view returns (uint8);
  function deposit(uint256 amount, address to) external returns (uint256);
  function deposit(uint256 amount) external returns (uint256);
  function deposit() external returns (uint256);
  function depositVault(uint256 amount, address to) external returns (uint256);
  function depositWithPermit(address target, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s, address to) external returns (uint256);
  function depositWithTransferPermit(address target, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s, address to) external returns (uint256);
  function mint(address to, uint256 amount) external returns (bool);
  function name() external view returns (string memory);
  function nonces(address) external view returns (uint256);
  function owner() external view returns (address);
  function permit(address target, address spender, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external;
  function symbol() external view returns (string memory);
  function totalSupply() external view returns (uint256);
  function transfer(address to, uint256 value) external returns (bool);
  function transferAndCall(address to, uint256 value, bytes calldata data) external returns (bool);
  function transferFrom(address from, address to, uint256 value) external returns (bool);
  function transferWithPermit(address target, address to, uint256 value, uint256 deadline, uint8 v, bytes32 r, bytes32 s) external returns (bool);
  function underlying() external view returns (address);
  function vault() external view returns (address);
  function withdraw(uint256 amount, address to) external returns (uint256);
  function withdraw(uint256 amount) external returns (uint256);
  function withdraw() external returns (uint256);
  function withdrawVault(address from, uint256 amount, address to) external returns (uint256);
}
