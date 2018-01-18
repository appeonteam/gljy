$PBExportHeader$uo_ry.sru
forward
global type uo_ry from nonvisualobject
end type
end forward

global type uo_ry from nonvisualobject
end type
global uo_ry uo_ry

type variables
datastore ls_ds
end variables

forward prototypes
public subroutine uo_add (us_ry ls_us_ry)
public subroutine uo_copy (us_ry ls_us_ry)
public subroutine uo_delete (us_ry ls_us_ry)
public subroutine uo_modify (us_ry ls_us_ry)
public function datastore uo_query (us_ry ls_us_ry)
end prototypes

public subroutine uo_add (us_ry ls_us_ry);//Ôö¼Ó
	//»ñÈ¡²ÎÊý
	string ls_id,ls_mc,ls_dm,ls_pass,ls_bm,ls_jyid,ls_addrid
	ls_id = ls_us_ry.id
	ls_mc = ls_us_ry.mc
	ls_dm = ls_us_ry.dm
	ls_pass = ls_us_ry.pass
	ls_bm = ls_us_ry.bm
	ls_jyid = ls_us_ry.jyid
	ls_addrid = ls_us_ry.addrid
	//ÐÞ¸Äu_addr_staff
	string ls_selectstr,ls_wherestr
	long ls_row,i
	ls_ds.dataobject = 'dat_ryinfo'
	ls_ds.settransobject(sqlca)
	ls_row = ls_ds.insertrow(0)
	ls_ds.setitem(ls_row,'u_addr_staff_ry_id',ls_id)
	ls_ds.setitem(ls_row,'u_addr_staff_ry_addrid',ls_addrid)
	ls_ds.update()
	ls_ds.reset()
	
end subroutine

public subroutine uo_copy (us_ry ls_us_ry);//¸´ÖÆ
	//»ñÈ¡²ÎÊý
	string ls_id,ls_mc,ls_dm,ls_pass,ls_bm,ls_jyid,ls_addrid
	ls_id = ls_us_ry.id
	ls_mc = ls_us_ry.mc
	ls_dm = ls_us_ry.dm
	ls_pass = ls_us_ry.pass
	ls_bm = ls_us_ry.bm
	ls_jyid = ls_us_ry.jyid
	ls_addrid = ls_us_ry.addrid
	//ÐÞ¸Äu_addr_staff
	string ls_selectstr,ls_wherestr
	long ls_row,i
	ls_ds.dataobject = 'dat_ryinfo'
	ls_ds.settransobject(sqlca)
	ls_row = ls_ds.insertrow(0)
	ls_ds.setitem(ls_row,'u_addr_staff_ry_id',ls_id)
	ls_ds.setitem(ls_row,'u_addr_staff_ry_addrid',ls_addrid)
	ls_ds.update()
	ls_ds.reset()
end subroutine

public subroutine uo_delete (us_ry ls_us_ry);//É¾³ý
	//»ñÈ¡²ÎÊý
	string ls_id,ls_mc,ls_dm,ls_pass,ls_bm,ls_jyid,ls_addrid
	ls_id     = ls_us_ry.id
	ls_mc     = ls_us_ry.mc
	ls_dm     = ls_us_ry.dm
	ls_pass   = ls_us_ry.pass
	ls_bm     = ls_us_ry.bm
	ls_jyid   = ls_us_ry.jyid
	ls_addrid = ls_us_ry.addrid
	//ÐÞ¸Äu_addr_staff
	string ls_selectstr,ls_wherestr
	long ls_row,i
	ls_ds.dataobject = 'dat_ryinfo'
	ls_ds.settransobject(sqlca)
	ls_selectstr = ls_ds.getsqlselect()
	ls_wherestr = " and ry_id like '" + ls_id + "' and rymc like '" + ls_mc + "' and rydm like '" + ls_dm &
	            + "' and rypass like '" + ls_pass + "' and rybm like '" + ls_bm + "' and jyid like '" + ls_jyid &
					+ "' and ry_addrid like '" + ls_addrid + "'"
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_ds.setsqlselect(ls_selectstr)
	ls_ds.retrieve()
	ls_row = ls_ds.rowcount()
	for i = 1 to ls_row
		ls_ds.deleterow(ls_row)
	end for
	ls_ds.update()
	ls_ds.reset()
end subroutine

public subroutine uo_modify (us_ry ls_us_ry);//ÐÞ¸Ä
	//»ñÈ¡²ÎÊý
	string ls_id,ls_mc,ls_dm,ls_pass,ls_bm,ls_jyid,ls_addrid
	ls_id     = ls_us_ry.id
	ls_mc     = ls_us_ry.mc
	ls_dm     = ls_us_ry.dm
	ls_pass   = ls_us_ry.pass
	ls_bm     = ls_us_ry.bm
	ls_jyid   = ls_us_ry.jyid
	ls_addrid = ls_us_ry.addrid
	//ÐÞ¸Äu_addr_staff
	string ls_selectstr,ls_wherestr
	long ls_row,i
	ls_ds.dataobject = 'dat_ryinfo'
	ls_ds.settransobject(sqlca)
	ls_selectstr = ls_ds.getsqlselect()
	ls_wherestr = " and ry_id like '" + ls_id + "' and rymc like '" + ls_mc + "' and rydm like '" + ls_dm &
	            + "' and rypass like '" + ls_pass + "' and rybm like '" + ls_bm + "' and jyid like '" + ls_jyid &
					+ "' and ry_addrid like '" + ls_addrid + "'"
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_ds.setsqlselect(ls_selectstr)
	ls_ds.retrieve()
	ls_row = ls_ds.rowcount()
	for i = 1 to ls_row
		ls_ds.setitem(ls_row,'ry_id',ls_id)
		ls_ds.setitem(ls_row,'ry_addrid',ls_addrid)
	end for
	ls_ds.update()
	ls_ds.reset()
end subroutine

public function datastore uo_query (us_ry ls_us_ry);//²éÑ¯
	//»ñÈ¡²ÎÊý
	string ls_id,ls_mc,ls_dm,ls_pass,ls_bm,ls_jyid,ls_addrid
	ls_id     = ls_us_ry.id
	ls_mc     = ls_us_ry.mc
	ls_dm     = ls_us_ry.dm
	ls_pass   = ls_us_ry.pass
	ls_bm     = ls_us_ry.bm
	ls_jyid   = ls_us_ry.jyid
	ls_addrid = ls_us_ry.addrid
	//²éÑ¯
	string ls_selectstr,ls_wherestr
	long ls_row,i
	ls_ds.dataobject = 'dat_ryinfo'
	ls_ds.settransobject(sqlca)
	ls_selectstr = ls_ds.getsqlselect()
	ls_wherestr = " and ry_id like '" + ls_id + "' and rymc like '" + ls_mc + "' and rydm like '" + ls_dm &
	            + "' and rypass like '" + ls_pass + "' and rybm like '" + ls_bm + "' and jyid like '" + ls_jyid &
					+ "' and ry_addrid like '" + ls_addrid + "'"
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_ds.setsqlselect(ls_selectstr)
	ls_ds.retrieve()
	//·µ»Ø
	return(ls_ds)
end function

on uo_ry.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_ry.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;ls_ds = create datastore
end event

event destructor;destroy ls_ds
end event

