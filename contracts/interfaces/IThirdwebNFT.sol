// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import "./IThirdwebToken.sol";

interface IThirdwebNFT is IThirdwebToken {
    
    /// @dev The thirdweb contract with fee related information.
    function thirdwebFees() external view returns (string memory);

    /// @dev The adress that receives all primary sales value.
    function primarySaleRecipient() external view returns (address);

    /// @dev The adress that receives all primary sales value.
    function platformFeeRecipient() external view returns (address);

    /// @dev The recipient of who gets the royalty.
    function royaltyRecipient() external view returns (address);

    /// @dev The percentage of royalty how much royalty in basis points.
    function royaltyBps() external view returns (uint256);

    /// @dev The % of primary sales collected by the contract as fees.
    function platformFeeBps() external view returns (uint256);

    /// @dev Lets a module admin set the default recipient of all primary sales.
    function setPrimarySaleRecipient(address _saleRecipient) external;

    /// @dev Lets a module admin update the royalty bps and recipient.
    function setRoyaltyInfo(address _royaltyRecipient, uint256 _royaltyBps) external;

    /// @dev Lets a module admin update the fees on primary sales.
    function setPlatformFeeInfo(address _platformFeeRecipient, uint256 _platformFeeBps) external;

    /// @dev Lets a module admin set a new owner for the contract. The new owner must be a module admin.
    function setOwner(address _newOwner) external;

    /// @dev Returns the URI for a given tokenId.
    function tokenURI(uint256 _tokenId) external view returns (string memory);
}