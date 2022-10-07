# card_conf.tcl: User configurable for DK-DEV-1SDX-P card
# Copyright (C) 2022 CESNET z. s. p. o.
# Author(s): Jakub Cabal <cabal@cesnet.cz>
#            Vladislav Valek <valekv@cesnet.cz>
#
# SPDX-License-Identifier: BSD-3-Clause

# NOTE: For the detailed description of this file, visit the Parametrization section
# in the documentation of the NDK-CORE repository.

set PROJECT_NAME ""

# ------------------------------------------------------------------------------
# PCIe parameters (not all combinations work):
# ------------------------------------------------------------------------------
# Supported combinations for this card:
# 1x PCIe Gen4 x8x8 -- PCIE_GEN=4, PCIE_ENDPOINTS=2, PCIE_ENDPOINT_MODE=1 (Note: default configuration)
# 1x PCIe Gen4 x16  -- PCIE_GEN=4, PCIE_ENDPOINTS=1, PCIE_ENDPOINT_MODE=0 (Note: worse DMA performance)
# 2x PCIe Gen4 x8x8 -- PCIE_GEN=4, PCIE_ENDPOINTS=4, PCIE_ENDPOINT_MODE=1 (Note: only for DMA_400G_DEMO)
# ------------------------------------------------------------------------------
# PCIe Generation (possible values: 4):
# 4 = PCIe Gen4 (Stratix 10 with P-Tile or Agilex)
set PCIE_GEN           4
# PCIe endpoints (possible values: 1, 2, 4):
# 1 = 1x PCIe x16 in one slot
# 2 = 2x PCIe x16 in two slot OR 2x PCIe x8 in one slot (bifurcation x8+x8)
# 4 = 4x PCIe x8 in two slots (bifurcation x8+x8)
set PCIE_ENDPOINTS     2
# PCIe endpoint mode (possible values: 0, 1):
# 0 = 1x16 lanes
# 1 = 2x8 lanes (bifurcation x8+x8)
set PCIE_ENDPOINT_MODE 1

# ------------------------------------------------------------------------------
# DMA parameters:
# ------------------------------------------------------------------------------
set DMA_RX_CHANNELS 16
set DMA_TX_CHANNELS 16
set DMA_400G_DEMO   false

# ------------------------------------------------------------------------------
# Other parameters:
# ------------------------------------------------------------------------------
set TSU_ENABLE true

# ------------------------------------------------------------------------------
# DDR4 parameters:
# ------------------------------------------------------------------------------
set MEM_PORTS       2
