#  IoT_Platform_for_BlockchainApplications
----
Uses ArtyS7-50 and pmod ESP32 to provide a microcontroller that provides the necessary tools to interruct with any Blockchain that uses:
---
- Elliptic Curve - secp256k1
--
- Hash Functions - SHA256
--

//--------------------------------------------------------------FPGA Configuration-----------------------------------------------------------------//

Necessary tools: Vivado2020.1, ArmKeil uvision, Vitis IDE, Serial Monitor

U need the digilent Board Files downloaded on C:\Path...\<InstallationFolder>\Vivado\2020.1\data\boards\board_files 
U also need to set environmental variables for Vivado and Keil: 
C:\Path...\<InstallationFolder>\Vivado\2020.1\bin
C:\Path...\<InstallationFolder\ARM\ARMCC\bin

On Vivado u need to add the following paths to the projects repositories:
C:\Path...\<ProjectName>\ArmCortex-M3\vivado\vivado-library-master
C:\Path...\<ProjectName>\ArmCortex-M3\vivado\Arm_ipi_repository

On Vitis u need to add the following path to the projects repositories.
cd C:\Path...\<ProjectName>\ArmCortex-M3\vivado\Arm_sw_repository

For this project to run smooth you need to set up a Virtual drive "V" to the <ProjectName> folder, u can do that from Vivado tcl console with the following commands:
C:\\Path...\\<ProjectName>
exec subst V: .

If you update the Hardware you will have to export the hardware again and after building the project on Vitis you must Copy the BSP from:
C:\Path...\<ProjectName>\ArmCortex-M3\software\m3_for_arty_a7\sdk_workspace\m3_for_arty_a7\Cortex_M3_0\standalone_domain\bsp
and paste it on:
C:\Path...\<ProjectName>\ArmCortex-M3\software\m3_for_arty_a7\sdk_workspace\standalone_bsp_0

Also watch Arms Video Tutorial on CortexM processors for the Arty Boards to learn how to coordinate between the tools.


//--------------------------------------------------------------ESP32 Configuration-----------------------------------------------------------------//

#Compiling and Flashing the code on the esp32: -If the make shows up errors try following this guide: https://docs.espressif.com/projects/arduino-esp32/en/latest/installing.html

-Just configure the makefile according to your PC paths.

-You also need arduino ide installed as well as the esp32 boards.

-Run "make" to compile everything.

-Run "make flash" to flash the code on the esp32

-You can find more about the Makefile here https://github.com/plerup/makeEspArduino

If you want to do this with the newest version of the secp256k1 code from bitcoin-core, or if you want to use other values for the EC multiplication tables, follow these instructions. My example uses ecmult-gen-precision=2 and ecmult-window=2.

#Updating the secp256k1 code:

-Get the code from here: https://github.com/bitcoin-core/secp256k1

-Run: ./autogen.sh

-Run: ./congure --enable-ecmult-static-precomputation --with-ecmult-gen-precision=X --with-ecmult-window=Y (X and Y exponentially increase the allocated space used for the EC multiplicatation to increase its speed. X = (2, 4, 8) Y = (2...24))

-Run make.

-Get all the files from secp256k1/src directory and paste them on the "CurrentDirectory"/secp25k1_on_esp32/libs/ecdsa

-Get the files secp256k1.h secp256k1_preallocated.h from secp256k1/include directory and paste them on the "CurrentDirectory"/secp25k1_on_esp32/libs/ecdsa (We do this because the include directory will create problems later on our makefile)

Check the includes of the secp256k1/src files (mostly the .c ones) and replace #include "../include/secp256k1.h" and #include ../include /secp256k1_preallocated.h with #include "secp256k1.h" #include "secp256k1_preallocated.h".

Also replace the #include "src/group.h" on ecmult_static_context.h with #include "group.h"

After these steps compile and flash the code on the esp32 as instructed in the beggining.  
  
