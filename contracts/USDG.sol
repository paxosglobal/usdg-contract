// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { PaxosTokenV2 } from "../paxos-token-contracts/contracts/PaxosTokenV2.sol";

/**
 * @title USDG Smart contract
 * @dev This contract is a {PaxosTokenV2-PaxosTokenV2} ERC20 token.
 * @custom:security-contact smart-contract-security@paxos.com
 */
contract USDG is PaxosTokenV2, UUPSUpgradeable {
    /**
     * @dev Returns the name of the token.
     */
    function name() public view virtual override returns (string memory) {
        return "Global Dollar";
    }

    /**
     * @dev Returns the symbol of the token.
     */
    function symbol() public view virtual override returns (string memory) {
        return "USDG";
    }

    /**
     * @dev Returns the decimal count of the token.
     */
    function decimals() public view virtual override returns (uint8) {
        return 6;
    }

    /**
     * @dev required by the OZ UUPS module to authorize an upgrade 
     * of the contract. Restricted to DEFAULT_ADMIN_ROLE.
     */
    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {} // solhint-disable-line no-empty-blocks
}