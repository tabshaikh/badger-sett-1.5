// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

interface IStrategy {
    // Return value for harvest, tend and balanceOfRewards
    struct TokenAmount {
        address token;
        uint256 amount;
    }

    function balanceOf() external view returns (uint256 balance);

    function balanceOfPool() external view returns (uint256 balance);

    function balanceOfWant() external view returns (uint256 balance);

    function earn() external;

    function withdraw(uint256 amount) external;

    function withdrawToVault() external returns (uint256 balance);

    function withdrawOther(address _asset) external;

    function harvest() external returns (TokenAmount[] memory harvested);
    function tend() external returns (TokenAmount[] memory tended);
    function balanceOfRewards() external view returns (TokenAmount[] memory rewards);

    function emitNonProtectedToken(address _token) external;
}
