# card_const.tcl: Default parameters for DK-DEV-1SDX-P card (developement only)
# Copyright (C) 2022 CESNET, z. s. p. o.
# Author(s): Jakub Cabal <cabal@cesnet.cz>
#            Vladislav Valek <valekv@cesnet.cz>
#
# SPDX-License-Identifier: BSD-3-Clause

# WARNING: The user should not deliberately change parameters in this file. For
# the description of this file, visit the Parametrization section in the
# documentation of the NDK-CORE repostiory

set CARD_NAME "DK-DEV-1SDX-P"
# Achitecture of Clock generator (INTEL or USP)
set CLOCK_GEN_ARCH "INTEL"
# Achitecture of PCIe module (P_TILE, R_TILE or USP)
set PCIE_MOD_ARCH "P_TILE"
# Achitecture of Network module (E_TILE, F_TILE, CMAC or EMPTY)
set NET_MOD_ARCH "E_TILE"
# Achitecture of SDM/SYSMON module
set SDM_SYSMON_ARCH "S10_ADC"

# ------------------------------------------------------------------------------
# ETH parameters:
# ------------------------------------------------------------------------------
# Number of Ethernet ports, must match number of items in list ETH_PORTS_SPEED !
set ETH_PORTS         2
# Speed for each one of the ETH_PORTS (allowed values: 100, 25, 10)
# ETH_PORT_SPEED is an array where each index represents given ETH_PORT and
# each index has associated a required port speed.
# NOTE: at this moment, all ports must have same speed !
set ETH_PORT_SPEED(0) $env(ETH_PORT_SPEED)
set ETH_PORT_SPEED(1) $env(ETH_PORT_SPEED)
# Number of channels for each one of the ETH_PORTS (allowed values: 1 for ETH_PORT_SPEED=100, 4 for ETH_PORT_SPEED<100)
# ETH_PORT_CHAN is an array where each index represents given ETH_PORT and
# each index has associated a required number of channels this port has.
# NOTE: at this moment, all ports must have same number of channels !
set ETH_PORT_CHAN(0) $env(ETH_PORT_CHAN)
set ETH_PORT_CHAN(1) $env(ETH_PORT_CHAN)
# Number of lanes for each one of the ETH_PORTS
# Typical values: 4 (QSFP), 8 (QSFP-DD)
set ETH_PORT_LANES(0) 4
set ETH_PORT_LANES(1) 4

# ------------------------------------------------------------------------------
# DMA parameters:
# ------------------------------------------------------------------------------
# This variable can be set in COREs *.mk file or as a parameter when launching the make
set DMA_TYPE    $env(DMA_TYPE)

# ------------------------------------------------------------------------------
# Other parameters:
# ------------------------------------------------------------------------------
if {$ETH_PORT_SPEED(0) == 10} {
    set TSU_FREQUENCY 161132812
} else {
	# 100GE and 25GE in E-Tile
    set TSU_FREQUENCY 402832031
}

VhdlPkgBool DMA_400G_DEMO $DMA_400G_DEMO
