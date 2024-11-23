pragma solidity >=0.7.0 <0.9.0;

contract SendEther {

    mapping(address => uint256) public accountBalances;

    address payable walletToSendFunds;

    function buyToken() public payable {
        accountBalances[msg.sender] += msg.value;
        walletToSendFunds.transfer(msg.value);
    }

    constructor(address payable _walletToSendFunds) {
        walletToSendFunds = _walletToSendFunds;
    }

}