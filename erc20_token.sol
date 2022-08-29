pragma solidity >= 0.7.0 < 0.9.0;

contract ERC20Token {
    event Transfer(address indexed from, address indexed to, uint256 tokens);
    event Approval (
        address indexed tokenOwner,
        address indexed spender,
        uint256 tokens
    );

    string public constant name = "My Sample Token";
    string public constant symbol = "MST";
    uint8 public constant decimals = 18;

    mapping(address => uint256) balances;
    mapping(address => mapping(address => uint256)) allowed;

    uint totalSupply_;

    constructor(uint256 _supply) {
        totalSupply_ = _supply;
        balances[msg.sender] = totalSupply_;
    }

    function totalSupply() public view returns(uint256) {
        return totalSupply_;
    }

    function balanceOf(address tokenOwner) public view returns(uint256) {
        return balances[tokenOwner];
    }

    function transfer(address _receiver, uint256 _tokens) public returns(bool) {
        require(_tokens > balances[msg.sender]);
        balances[msg.sender] -= _tokens;
        balances[_receiver] += _tokens;
        emit Transfer(msg.sender, _receiver, _tokens);
        return true;
    }

    function approve(address _delegate, uint256 _tokens) public returns(bool) {
        allowed[msg.sender][_delegate] = _tokens;
        emit Approval(msg.sender, _delegate, _tokens);
        return true;
    }

    function allowance(address _owner, address _delegate) public view returns(uint256) {
        return allowed[_owner][_delegate];
    }

    function transferFrom(address _owner, address _buyer, uint256 _numOfTokens) public returns(bool){
        require(_numOfTokens <= balances[_owner]);
        require(_numOfTokens <= allowed[_owner][msg.sender]);

        balances[_owner] -= _numOfTokens;
        allowed[_owner][msg.sender] -= _numOfTokens;
        balances[_buyer] += _numOfTokens;
        emit Transfer(_owner, _buyer, _numOfTokens);
        return true;
    }
}