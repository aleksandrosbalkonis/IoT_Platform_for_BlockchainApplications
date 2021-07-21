# CortexM3_On_ArtyS7_50
A micro controller with connection to the Internet using Arm CM3, the Arty S7-50 board and Pmod ESP32

Necessary tools: Vivado2020.1, ArmKeil uvision, Vitis IDE, Serial Monitor

U need the digilent Board Files downloaded on C:\Path...\<InstallationFolder>\Vivado\2020.1\data\boards\board_files 
U also need to set environmental variables for Vivado and Keil: 
C:\Path...\<InstallationFolder>\Vivado\2020.1\bin
C:\Path...\<InstallationFolder\ARM\ARMCC\bin

On Vivado u need to add the following paths to the projects repositories:
cd C:\Path...\<ProjectName>\ArmCortex-M3\vivado\vivado-library-master
cd C:\Path...\<ProjectName>\ArmCortex-M3\vivado\Arm_ipi_repository

On Vitis u need to add the following path to the projects repositories.
cd C:\Path...\<ProjectName>\ArmCortex-M3\vivado\Arm_sw_repository


For this project to run smooth you need to set up a Virtual drive "V" to the <ProjectName> folder, u can do that from Vivado tcl console with the following commands:
cd C:\\Path...\\<ProjectName>
exec subst V: .

If you update the Hardware you will have to export the hardware again and after building the project on Vitis you must Copy the BSP from:
C:\Path...\<ProjectName>\ArmCortex-M3\software\m3_for_arty_a7\sdk_workspace\m3_for_arty_a7\Cortex_M3_0\standalone_domain\bsp
and paste it on:
C:\Path...\<ProjectName>\ArmCortex-M3\software\m3_for_arty_a7\sdk_workspace\standalone_bsp_0

Also watch Arms Video Tutorial on CortexM processors for the Arty Boards to learn how to coordinate between the tools.
