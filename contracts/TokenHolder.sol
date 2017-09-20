pragma solidity ^0.4.14;

import './ERC20.sol';
import './Ownable.sol';

contract TokenHolder is Ownable {

    /// @dev Allow the owner to transfer out any accidentally sent ERC20 tokens.
    /// @notice Resolve issues from ERC20 tokens. Reviewed from OpenZeppelin in KinTokenICO.
    /// @param _tokenAddress address The address of the ERC20 contract.
    /// @param _amount uint256 The amount of tokens to be transferred.
    function transferAnyERC20Token(address _tokenAddress, uint256 _amount) onlyOwner returns (bool success) {
        return ERC20(_tokenAddress).transfer(owner, _amount);
    }
}