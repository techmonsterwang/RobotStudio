
ifvc -label VC_SKIP_DN1
iomgrinstall -entry dnFBC -name /dnfbc -errlabel ERROR_DNFBC

creat -name /dnfbc/DNET_PCI: -pmode 0 -errlabel ERROR_DNFBC

task -slotname DNread -entp read_ts -pri 72 -vwopt 0x1c -stcks 10000 -nosync -auto
readparam -devicename /DNET_PCI:/bus_read -rmode 1 -buffersize 100
invoke -entry dnfbc_tk_activate -strarg "DNET" -nomode

# Add DeviceNet to system dump service
sysdmp_add -show dnfbc_sysdmp

goto -label VC_SKIP_DN2 

#VC_SKIP_DN1

creat -name /simfbc/DNET_PCI: -pmode 0

#VC_SKIP_DN2
#ERROR_DNFBC

ifvc -label VC_SKIP_PDP1
iomgrinstall -entry pdpFBC -name /pdpfbc

creat -name /pdpfbc/PBUS_PCI: -pmode 0 -errlabel ERROR_PBUS

task -slotname pbus -entp read_ts -pri 72 -vwopt 0x1c -stcks 10000 -nosync -auto
readparam -devicename /PBUS_PCI:/bus_read -rmode 1 -buffersize 100

# Add Profibus to system dump service
sysdmp_add -show pdpfbc_sysdmp

goto -label VC_SKIP_PDP2

#VC_SKIP_PDP1

creat -name /simfbc/PBUS_PCI: -pmode 0

#VC_SKIP_PDP2
#ERROR_PBUS

###################################################################################

# Add IncTemplate to system dump service
sysdmp_add -show PnetSysDump

echo -text "Starting Profinet and installs the driver/networks"

# INC DRIVER INSTALLATION:

# Debug from installation
# 768 = Hex 300
# 7425 = Hex 1D01
# 7168 = Hex 1c00
# 8190 = Hex 1FFE
# 0x10000 = Startup
#invoke2 -entry uprobe_console_trace -format int -int1 1
#invoke2 -entry eioevent_trace -format int -int1 7168
#invoke2 -entry inc_trace -format int -int1 8190
#invoke -entry PnetTrace -arg 0x10000 -nomode

# Spawn driver tasks
task -slotname PN_Tick -entp PnetTick -pri 44 -vwopt 0x1c -stcks 5000 -nosync -auto -noreg
task -slotname PnetReadts -entp PnetTaskRead -pri 72 -vwopt 0x1c -stcks 18000 -nosync -auto -noreg
task -slotname Pnetts -entp PnetTask -pri 122 -vwopt 0x1c -stcks 50000 -nosync -auto -noreg
task -slotname PnetCmdts -entp PnetTaskCmd -pri 123 -vwopt 0x1c -stcks 18000 -nosync -auto -noreg

# Register driver
invoke -entry incInstallDriver -strarg "PROFINET_INC,PnetDriverEntry,PnetOutputEntry,BitMapped" -nomode

echo -text "... Done"
###################################################################################

