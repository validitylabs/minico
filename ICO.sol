pragma solidity ^0.4.24;

contract ICO {
    mapping(address => uint256) public balanceOf;
    
    address public beneficiary = msg.sender; // initialize beneficiary with address that deploys contract

    function() public payable {
        balanceOf[msg.sender] += msg.value;
        address(beneficiary).transfer(msg.value);
    }
    
    function transfer(address to, uint256 amount) public {
        require(balanceOf[msg.sender] >= amount);
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
    }
}
