// SPDX-FileCopyrightText: 2021 Toucan Labs
//
// SPDX-License-Identifier: UNLICENSED

// If you encounter a vulnerability or an issue, please contact <security@toucan.earth> or visit security.toucan.earth
pragma solidity 0.8.14;

import '../CarbonOffsetBatchesTypes.sol';

interface ICarbonOffsetBatches {
    function getConfirmationStatus(uint256 tokenId)
        external
        view
        returns (BatchStatus);

    function getBatchNFTData(uint256 tokenId)
        external
        view
        returns (
            uint256,
            uint256,
            BatchStatus
        );

    function setStatusForDetokenizationOrRetirement(
        uint256 tokenId,
        BatchStatus newStatus
    ) external;
}
