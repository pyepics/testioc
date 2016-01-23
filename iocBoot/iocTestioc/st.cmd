#!../../bin/linux-x86_64/testioc

errlogInit(5000)

## You may have to change testioc to something else
## everywhere it appears in this file

< envPaths

## Register all support components
dbLoadDatabase("$(TOP)/dbd/testioc.dbd")
testioc_registerRecordDeviceDriver(pdbbase)

dbLoadRecords("$(EPICS_BASE)/db/scan.db", "P=Py:,MAXPTS1=2000,MAXPTS2=200,MAXPTS3=20,MAXPTS4=10,MAXPTSH=10")

# Free-standing user string/number calculations (sCalcout records)
dbLoadRecords("$(EPICS_BASE)/db/userStringCalcs10.db", "P=Py:")

# Free-standing user transforms (transform records)
dbLoadRecords("$(EPICS_BASE)/db/userTransforms10.db", "P=Py:")

# dbLoadRecords("$(EPICS_BASE)/db/asynRecord.db", "P=13XRM:,R=asyn1,PORT=XPS1,ADDR=0,IMAX=256,OMAX=256")

# test databases
dbLoadRecords("$(TOP)/db/pydebug.db", "P=Py:")

cd ${TOP}/iocBoot/${IOC}
iocInit()
