# user_const.tcl: Default parameters for DK-DEV-1SDX-P card
# Copyright (C) 2020 CESNET z. s. p. o.
# Author(s): Jakub Cabal <cabal@cesnet.cz>
#
# SPDX-License-Identifier: BSD-3-Clause

# Source default common values
source $CARD_COMMON_BASE/config/user_const.tcl

set PROJECT_NAME ""

# User-defined generics
set USER_GENERIC0 0
set USER_GENERIC1 0
set USER_GENERIC2 0
set USER_GENERIC3 0

# ETH parameters:
# ===============
set ETH_ENABLE        true
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

# PCIe parameters:
# ================
# PCIe endpoints (allowed values: 1, 2, 4):
# 1 = 1x PCIe x16 in one slot
# 2 = 2x PCIe x16 in two slot OR 2x PCIe x8 in one slot (bifurcation x8+x8)
# 4 = 4x PCIe x8 in two slots (bifurcation x8+x8)
set PCIE_ENDPOINTS     2
# PCIe endpoint mode (allowed values: 0, 1):
# 0 = 1x16 lanes
# 1 = 2x8 lanes (bifurcation x8+x8)
set PCIE_ENDPOINT_MODE 1

# DMA parameters:
# ===============
set DMA_ENABLE      true
set DMA_RX_CHANNELS 16
set DMA_TX_CHANNELS 16
set DMA_400G_DEMO   false

# Other parameters:
# =================
set TSU_ENABLE true
if {$ETH_PORT_SPEED(0) == 10} {
    set TSU_FREQUENCY 161132812
} else {
	# 100GE and 25GE in E-Tile
    set TSU_FREQUENCY 402832031
}

# DDR4 parameters:
# ===============
set MEM_PORTS       2