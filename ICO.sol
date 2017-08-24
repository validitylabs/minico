contract ico {
    mapping(address => uint) public balanceOf;

    function() payable {
        balanceOf[msg.sender] += msg.value;
        address(0x0).transfer(msg.value);
    }
    
    function transfer(address to, uint256 amount) {
        require(balanceOf[msg.sender] >= amount);
        balanceOf[msg.sender] -= amount;
        balanceOf[to] += amount;
    }
}
