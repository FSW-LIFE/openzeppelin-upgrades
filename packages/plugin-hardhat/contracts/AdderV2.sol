pragma solidity ^0.5.1;

library SafeAdd {
    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }
}

contract AdderV2 {
    using SafeAdd for uint;

    uint n;

    function initialize() public view {
    }

    function add(uint x) public returns (uint) {
        n = n.add(x);
        return n;
    }

}
