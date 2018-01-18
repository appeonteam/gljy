$PBExportHeader$gljy.sra
$PBExportComments$¹øÂ¯¼ìÑé_Ö÷¿ØÄ£¿é
forward
global type gljy from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables
//main 
StaticText  Sf[] 
//grGraphType m_graph = ColGraph!
string gs_staffno,gs_staffname,gs_deptname,gs_starttime
boolean gb_schedule, gs_modimark
//xtwh
string gs_keyno
long gi_modimark
string gs_wh_dwbh
string gs_jydw,gs_zwid,gs_zhmark

string gi_jymlid,gi_jylbid,gi_jyml,gi_jylb

string gs_ml

boolean win_800=false
transaction gt_sqlOld
transaction gt_sqlry
string gs_OldSql
string gs_htlb
string gs_addrid,gs_addrname
string gs_connect
string gs_ffbg
end variables

global type gljy from application
string appname = "gljy"
end type
global gljy gljy

type prototypes
function uint GetDriveTypeA(string drive) LIBRARY "KERNEL32.DLL" alias for "GetDriveTypeA;Ansi"
function boolean FlashWindow(uint handle,boolean flash) library "user32.dll"
function boolean GetUserNameA(ref string uname , ref ulong slength) LIBRARY "advapi32.dll" alias for "GetUserNameA;Ansi"

FUNCTION ulong GetCurrentDirectoryA(ulong BufferLen,ref string currentdir)&
 LIBRARY "Kernel32.dll" alias for "GetCurrentDirectoryA;Ansi"
Function boolean CopyFileA(string szexistingfile,string sznewfile,boolean fail) Library "kernel32.dll" alias for "CopyFileA;Ansi"
Function int GetSystemMetrics(int indexnum) Library "user32.dll"
end prototypes

on gljy.create
appname="gljy"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on gljy.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;environment	env				// holds environment information
/* Get the environment information */
IF ( GetEnvironment(env) <> 1 ) THEN
	MessageBox( "Application: Open", "Unable to get environment information.~nHalting ..." )
	HALT
END IF
//gs_ml = fun_getcurrentdirectory(gs_ml)
//
IF FileExists(gs_ml + "djylrq.db") = false THEN 	
	CopyFileA(gs_ml + "temp.db",gs_ml + "djylrq.db",true)
	FileDelete(gs_ml + "bg.log")
END IF 

string startupfile = 'install.ini'

gs_connect  = ProfileString (startupfile, "server", "connect", "")
if gs_connect = 'true' then
		sqlca.database    = "login"
		sqlca.servername  = ProfileString (startupfile, "server", "servername", "")
		sqlca.dbms = "MSS (Msoft) SQL Server 6.0"	
		sqlca.logid       = "djylrq"
		sqlca.logpass     = "djylrq123"
		sqlca.userid      = "djylrq"
		sqlca.dbpass      = "djylrq"
//		SQLCA.DBParm = "CacheName='aa' "
		sqlca.AutoCommit	= true
		connect using sqlca;
else
		sqlca.dbms        = ProfileString (startupfile, "server", "dbms",       "")
		sqlca.database    = ProfileString (startupfile, "server", "database",   "")
		sqlca.servername  = ProfileString (startupfile, "server", "servername", "")
		if sqlca.dbms = 'server' then 
			sqlca.dbms = "MSS (Msoft) SQL Server 6.0"	
			sqlca.logid       = "djylrq"
			sqlca.logpass     = "djylrq123"
			sqlca.userid      = "djylrq"
			sqlca.dbpass      = "djylrq"
		else
			sqlca.dbms = 'ODBC'
			sqlca.logid       = ""
			sqlca.logpass     = ""
			sqlca.userid      = "dba"
			sqlca.dbpass      = ''
		end if
		sqlca.dbparm      = ProfileString (startupfile, "server", "dbparm",     "")
gt_sqlOld = Create Transaction

//gt_sqlOld.dbms        = ProfileString (startupfile, "serverold", "dbms",       "")
//gt_sqlOld.database    = ProfileString (startupfile, "serverold", "database",   "")
//gt_sqlOld.servername  = ProfileString (startupfile, "serverold", "servername", "")
//
//gt_sqlOld.logid       = ProfileString (startupfile, "serverold", "logid", "")
//gt_sqlOld.logpass     = ProfileString (startupfile, "serverold", "logpass",      "")
//gt_sqlOld.userid      = ProfileString (startupfile, "serverold", "userid",     "")
//gt_sqlOld.dbpass      = ProfileString (startupfile, "serverold", "dbpass",     "")
//gt_sqlOld.dbparm      = ProfileString (startupfile, "serverold", "dbparm",     "")
//
gt_sqlOld.dbms        = ProfileString (startupfile, "serverold", "dbms",       "")
gt_sqlOld.database    = ProfileString (startupfile, "serverold", "database",   "")
gt_sqlOld.servername  = ProfileString (startupfile, "serverold", "servername", "")
if gt_sqlOld.dbms = 'serverold' then 
	gt_sqlOld.dbms = "MSS (Msoft) SQL Server 6.0"	
   gt_sqlOld.logid       = "djylrq"
   gt_sqlOld.logpass     = "djylrq123"
   gt_sqlOld.userid      = "djylrq"
   gt_sqlOld.dbpass      = "djylrq"
//else
//	gt_sqlOld.dbms = 'ODBC'
//	gt_sqlOld.logid       = ""
//   gt_sqlOld.logpass     = ""
//	gt_sqlOld.userid      = "dba"
//   gt_sqlOld.dbpass      = ''
end if
gt_sqlOld.dbparm      = ProfileString (startupfile, "serverold", "dbparm",     "")

connect;
end if
if sqlca.sqlcode <> 0 then
	MessageBox ("Cannot Connect to Database", sqlca.sqlerrtext)
	return
end if
int sys_me
sys_me = GetSystemMetrics(1)
if sys_me < 600 then
	messagebox("ÏµÍ³ÌáÊ¾","±¾³ÌÐòÔËÐÐÐèÒªµÄÏÔÊ¾Æ÷·Ö±æÂÊ×îµÍÉèÖÃÎª800¡Á600!")
	HALT
else
	if sys_me = 600 then 
		win_800 = false
	else
		win_800 = true
	end if
end if
//select zhmark into :gs_zhmark from a_jydw ;
gs_starttime=fun_datetime('datetime')
///***¼ÓÊ±ÏÞ***///
//string ls_time 
//select add12 into :ls_time from a_jydw ;
//if isnull(ls_time) or ls_time = '' or ls_time = "" then	
//	update a_jydw set add12 = :gs_starttime; 
//else
//	//select add12 into :ls_time from a_jydw ;
//	date ls_time1,ls_time2
//	ls_time1 = date(mid(ls_time,1,10))
//	ls_time2 = date(mid(gs_starttime,1,10))
////	messagebox("",DaysAfter(ls_time1,ls_time2))
//	if DaysAfter(ls_time1,ls_time2) > 90 then
//		messagebox("ÏµÍ³ÌáÊ¾","¶Ô²»Æð£¬ÄãµÄÈí¼þÒÑ¾­¹ýÆÚ£¬ÇëÓë¹©Ó¦ÉÌÁªÏµ£¡")
//		halt
//	end if
//end if
open(win_all)
//open(aa)

end event

