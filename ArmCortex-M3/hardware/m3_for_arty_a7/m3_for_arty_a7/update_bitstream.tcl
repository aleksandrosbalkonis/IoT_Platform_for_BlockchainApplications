# -----------------------------------------------------------------------------
#  The confidential and proprietary information contained in this file may
#  only be used by a person authorised under and to the extent permitted
#  by a subsisting licensing agreement from ARM limited.
#
#             (C) COPYRIGHT 2018 ARM limited.
#                 ALL RIGHTS RESERVED
#
#  This entire notice must be reproduced on all copies of this file
#  and copies of this file may only be made by a person if such person is
#  permitted to do so under the terms of a subsisting license agreement
#  from ARM limited.
#
#       SVN Information
#
#       Checked In          : $Date$
#
#       Revision            : $Revision$
#
#       Release Information : Cortex-M3 DesignStart-r0p1-00rel0
#                             with V2C-DAPLink adaptor board
# -----------------------------------------------------------------------------
#  Purpose :
#           Script to create bit and mcs files for Arty A7 board
#
#           Combines the original bit file, mmi file, and software elf to create
#           the full bitstream
#           Then converts full bitstream to mcs for download to the onboard flash
#
#           Can be run either in Vivado GUI TCL console, or else in batch mode
#           from command line
#           If run in Vivado TCL console, pwd needs to be set to root of project, 
#           in the same location as the bit file
# -----------------------------------------------------------------------------

reset_run synth_1
launch_runs impl_1 -to_step write_bitstream -jobs 12 
