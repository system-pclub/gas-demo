// SPDX-License-Identifier: AGPL-3.0-only
pragma solidity >=0.8.0;

contract GasMeasure {

    event log_named_uint         (string key, uint val);

    modifier logs_gas() {
        uint startGas = gasleft();
        _;
        uint endGas = gasleft();
        emit log_named_uint("gas", startGas - endGas);
    }
}