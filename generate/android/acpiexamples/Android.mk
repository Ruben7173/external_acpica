#
# acpiexamples - Example ACPICA initialization code and control
# method execution.
#
include $(CLEAR_VARS)
LOCAL_MODULE := acpiexamples

LOCAL_SRC_FILES := \
	$(ACPIEXAMPLES)/examples.c\
	$(ACPIEXAMPLES)/exstubs.c\
	$(ACPIEXAMPLES)/extables.c\
	$(ACPICA_DISPATCHER)/dsargs.c\
	$(ACPICA_DISPATCHER)/dscontrol.c\
	$(ACPICA_DISPATCHER)/dsdebug.c\
	$(ACPICA_DISPATCHER)/dsfield.c\
	$(ACPICA_DISPATCHER)/dsinit.c\
	$(ACPICA_DISPATCHER)/dsmethod.c\
	$(ACPICA_DISPATCHER)/dsmthdat.c\
	$(ACPICA_DISPATCHER)/dsobject.c\
	$(ACPICA_DISPATCHER)/dsopcode.c\
	$(ACPICA_DISPATCHER)/dspkginit.c\
	$(ACPICA_DISPATCHER)/dsutils.c\
	$(ACPICA_DISPATCHER)/dswexec.c\
	$(ACPICA_DISPATCHER)/dswload.c\
	$(ACPICA_DISPATCHER)/dswload2.c\
	$(ACPICA_DISPATCHER)/dswscope.c\
	$(ACPICA_DISPATCHER)/dswstate.c\
	$(ACPICA_EVENTS)/evhandler.c\
	$(ACPICA_EVENTS)/evmisc.c\
	$(ACPICA_EVENTS)/evregion.c\
	$(ACPICA_EVENTS)/evrgnini.c\
	$(ACPICA_EVENTS)/evxface.c\
	$(ACPICA_EVENTS)/evxfregn.c\
	$(ACPICA_EXECUTER)/exconcat.c\
	$(ACPICA_EXECUTER)/exconfig.c\
	$(ACPICA_EXECUTER)/exconvrt.c\
	$(ACPICA_EXECUTER)/excreate.c\
	$(ACPICA_EXECUTER)/exdebug.c\
	$(ACPICA_EXECUTER)/exdump.c\
	$(ACPICA_EXECUTER)/exfield.c\
	$(ACPICA_EXECUTER)/exfldio.c\
	$(ACPICA_EXECUTER)/exmisc.c\
	$(ACPICA_EXECUTER)/exmutex.c\
	$(ACPICA_EXECUTER)/exnames.c\
	$(ACPICA_EXECUTER)/exoparg1.c\
	$(ACPICA_EXECUTER)/exoparg2.c\
	$(ACPICA_EXECUTER)/exoparg3.c\
	$(ACPICA_EXECUTER)/exoparg6.c\
	$(ACPICA_EXECUTER)/exprep.c\
	$(ACPICA_EXECUTER)/exregion.c\
	$(ACPICA_EXECUTER)/exresnte.c\
	$(ACPICA_EXECUTER)/exresolv.c\
	$(ACPICA_EXECUTER)/exresop.c\
	$(ACPICA_EXECUTER)/exstore.c\
	$(ACPICA_EXECUTER)/exstoren.c\
	$(ACPICA_EXECUTER)/exstorob.c\
	$(ACPICA_EXECUTER)/exsystem.c\
	$(ACPICA_EXECUTER)/extrace.c\
	$(ACPICA_EXECUTER)/exutils.c\
	$(ACPICA_HARDWARE)/hwpci.c\
	$(ACPICA_NAMESPACE)/nsaccess.c\
	$(ACPICA_NAMESPACE)/nsalloc.c\
	$(ACPICA_NAMESPACE)/nsarguments.c\
	$(ACPICA_NAMESPACE)/nsconvert.c\
	$(ACPICA_NAMESPACE)/nsdump.c\
	$(ACPICA_NAMESPACE)/nseval.c\
	$(ACPICA_NAMESPACE)/nsinit.c\
	$(ACPICA_NAMESPACE)/nsload.c\
	$(ACPICA_NAMESPACE)/nsnames.c\
	$(ACPICA_NAMESPACE)/nsobject.c\
	$(ACPICA_NAMESPACE)/nsparse.c\
	$(ACPICA_NAMESPACE)/nspredef.c\
	$(ACPICA_NAMESPACE)/nsprepkg.c\
	$(ACPICA_NAMESPACE)/nsrepair.c\
	$(ACPICA_NAMESPACE)/nsrepair2.c\
	$(ACPICA_NAMESPACE)/nssearch.c\
	$(ACPICA_NAMESPACE)/nsutils.c\
	$(ACPICA_NAMESPACE)/nswalk.c\
	$(ACPICA_NAMESPACE)/nsxfeval.c\
	$(ACPICA_NAMESPACE)/nsxfname.c\
	$(ACPICA_NAMESPACE)/nsxfobj.c\
	$(ACPICA_OSL)/osunixxf.c\
	$(ACPICA_PARSER)/psargs.c\
	$(ACPICA_PARSER)/psloop.c\
	$(ACPICA_PARSER)/psobject.c\
	$(ACPICA_PARSER)/psopcode.c\
	$(ACPICA_PARSER)/psopinfo.c\
	$(ACPICA_PARSER)/psparse.c\
	$(ACPICA_PARSER)/psscope.c\
	$(ACPICA_PARSER)/pstree.c\
	$(ACPICA_PARSER)/psutils.c\
	$(ACPICA_PARSER)/pswalk.c\
	$(ACPICA_PARSER)/psxface.c\
	$(ACPICA_TABLES)/tbdata.c\
	$(ACPICA_TABLES)/tbfadt.c\
	$(ACPICA_TABLES)/tbfind.c\
	$(ACPICA_TABLES)/tbinstal.c\
	$(ACPICA_TABLES)/tbprint.c\
	$(ACPICA_TABLES)/tbutils.c\
	$(ACPICA_TABLES)/tbxface.c\
	$(ACPICA_TABLES)/tbxfload.c\
	$(ACPICA_TABLES)/tbxfroot.c\
	$(ACPICA_UTILITIES)/utaddress.c\
	$(ACPICA_UTILITIES)/utalloc.c\
	$(ACPICA_UTILITIES)/utascii.c\
	$(ACPICA_UTILITIES)/utbuffer.c\
	$(ACPICA_UTILITIES)/utcache.c\
	$(ACPICA_UTILITIES)/utcopy.c\
	$(ACPICA_UTILITIES)/utdebug.c\
	$(ACPICA_UTILITIES)/utdecode.c\
	$(ACPICA_UTILITIES)/utdelete.c\
	$(ACPICA_UTILITIES)/uterror.c\
	$(ACPICA_UTILITIES)/uteval.c\
	$(ACPICA_UTILITIES)/utexcep.c\
	$(ACPICA_UTILITIES)/utglobal.c\
	$(ACPICA_UTILITIES)/uthex.c\
	$(ACPICA_UTILITIES)/utids.c\
	$(ACPICA_UTILITIES)/utinit.c\
	$(ACPICA_UTILITIES)/utlock.c\
	$(ACPICA_UTILITIES)/utmath.c\
	$(ACPICA_UTILITIES)/utmisc.c\
	$(ACPICA_UTILITIES)/utmutex.c\
	$(ACPICA_UTILITIES)/utobject.c\
	$(ACPICA_UTILITIES)/utosi.c\
	$(ACPICA_UTILITIES)/utownerid.c\
	$(ACPICA_UTILITIES)/utnonansi.c\
	$(ACPICA_UTILITIES)/utpredef.c\
	$(ACPICA_UTILITIES)/utresrc.c\
	$(ACPICA_UTILITIES)/utstate.c\
	$(ACPICA_UTILITIES)/utstring.c\
	$(ACPICA_UTILITIES)/utstrsuppt.c\
	$(ACPICA_UTILITIES)/utstrtoul64.c\
	$(ACPICA_UTILITIES)/utxface.c\
	$(ACPICA_UTILITIES)/utxferror.c\
	$(ACPICA_UTILITIES)/utxfinit.c

#
# Flags specific to acpinames utility
#
LOCAL_CFLAGS += \
	-DACPI_EXAMPLE_APP

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH)/$(ACPIEXAMPLES)

#
# Common Rules
#
include $(ACPICA_BUILD)
