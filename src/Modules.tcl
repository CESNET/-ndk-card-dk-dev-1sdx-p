# Modules.tcl: script to compile DK-DEV-1SDX-P card
# Copyright (C) 2020 CESNET z. s. p. o.
# Author(s): Jakub Cabal <cabal@cesnet.cz>
#
# SPDX-License-Identifier: BSD-3-Clause

# Globally defined variables
global CARD_COMMON_BASE

global BOARD
set BOARD "DK-DEV-1SDX-P"

set COMPONENTS [list [list "FPGA_COMMON" $CARD_COMMON_BASE $BOARD]]

# IP sources
set MOD "$MOD $ENTITY_BASE/ip/iopll_ip.ip"
set MOD "$MOD $ENTITY_BASE/ip/reset_release_ip.ip"
set MOD "$MOD $ENTITY_BASE/ip/ptile_pcie_2x8.ip"
set MOD "$MOD $ENTITY_BASE/ip/ptile_pcie_1x16.ip"
set MOD "$MOD $ENTITY_BASE/ip/etile_eth_4x10g.ip"
set MOD "$MOD $ENTITY_BASE/ip/etile_eth_4x25g.ip"
set MOD "$MOD $ENTITY_BASE/ip/etile_eth_1x100g.ip"
set MOD "$MOD $ENTITY_BASE/ip/emif_s10dx.ip"

# Top-level
set MOD "$MOD $ENTITY_BASE/fpga.vhd"
