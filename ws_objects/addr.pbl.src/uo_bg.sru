$PBExportHeader$uo_bg.sru
forward
global type uo_bg from nonvisualobject
end type
end forward

global type uo_bg from nonvisualobject
end type
global uo_bg uo_bg

type variables
datastore ls_ds
end variables

forward prototypes
public subroutine uo_add (us_bg ls_us_bg)
public subroutine uo_copy (us_bg ls_us_bg)
public subroutine uo_delete (us_bg ls_us_bg)
public subroutine uo_fcy (us_bg ls_us_bg)
public subroutine uo_jyz (us_bg ls_us_bg)
public subroutine uo_modify (us_bg ls_us_bg)
public function datastore uo_query (us_bg ls_us_bg)
public subroutine uo_songshen (us_bg ls_us_bg)
public subroutine uo_tuigao (us_bg ls_us_bg)
end prototypes

public subroutine uo_add (us_bg ls_us_bg);//ÐÂÔö
	//»ñÈ¡²ÎÊý
	string ls_id,ls_jytype,ls_qc,ls_rq,ls_fl
	ls_id     = ls_us_bg.id
	ls_jytype = ls_us_bg.jytype
	ls_qc     = ls_us_bg.qc
	ls_rq     = ls_us_bg.rq
	ls_fl 	 = ls_us_bg.fl
	
	long ls_row
	//u_addr_bgÖÐÔö¼Ó¼ÇÂ¼
	ls_ds.dataobject = 'dat_bginfo'
	ls_ds.settransobject(sqlca)
	ls_row = ls_ds.insertrow(0)
	ls_ds.setitem(ls_row,'bg_id',ls_id)
	ls_ds.setitem(ls_row,'bg_jytype',ls_jytype)
	ls_ds.setitem(ls_row,'bg_qc_addrid',ls_qc)
	ls_ds.setitem(ls_row,'bg_rq',ls_rq)
	ls_ds.setitem(ls_row,'fl',ls_fl)
	ls_ds.update()
	ls_ds.reset()
end subroutine

public subroutine uo_copy (us_bg ls_us_bg);//¸´ÖÆ
	//»ñÈ¡jyid,jytype,qc
	string ls_id,ls_jytype,ls_qc,ls_rq,ls_fl
	ls_id     = ls_us_bg.id
	ls_jytype = ls_us_bg.jytype
	ls_qc     = ls_us_bg.qc
	ls_rq     = ls_us_bg.rq
	ls_fl     = ls_us_bg.fl
	
	string ls_selectstr,ls_wherestr
	long ls_row
	//ÐÞ¸Äu_addr_bgÖÐµÄ¼ÇÂ¼
	ls_ds.dataobject = 'dat_bginfo'
	ls_ds.settransobject(sqlca)
	ls_row = ls_ds.insertrow(0)
	ls_ds.setitem(ls_row,'bg_id',ls_id)
	ls_ds.setitem(ls_row,'bg_jytype',ls_jytype)
	ls_ds.setitem(ls_row,'bg_qc_addrid',ls_qc)
	ls_ds.setitem(ls_row,'bg_rq',ls_rq)
	ls_ds.setitem(ls_row,'fl',ls_fl)
	ls_ds.update()
	
	ls_ds.reset()
end subroutine

public subroutine uo_delete (us_bg ls_us_bg);//É¾³ý
	//»ñÈ¡jyid,jytype,qc
	string ls_id,ls_jytype,ls_qc,ls_rq
	ls_id     = ls_us_bg.id
	ls_jytype = ls_us_bg.jytype
	ls_qc     = ls_us_bg.qc
	ls_rq     = ls_us_bg.rq
	
	string ls_selectstr,ls_wherestr
	long ls_row,i
	//É¾³ýu_addr_bgÖÐµÄ¼ÇÂ¼
	ls_ds.dataobject = 'dat_bginfo'
	ls_ds.settransobject(sqlca)
	ls_selectstr = ls_ds.getsqlselect()
	ls_wherestr = " where bg_id = '" + ls_id + "' and bg_jytype = '" + ls_jytype + &
						"' and bg_qc_addrid = '" + ls_qc + &
						"' and bg_rq like '" + ls_rq + "'"
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_ds.setsqlselect(ls_selectstr)
	ls_ds.retrieve()
	ls_row = ls_ds.rowcount()
	if ls_row >0 then
		for i = 1 to ls_row
			ls_ds.deleterow(ls_row)
		end for
		ls_ds.update()
	end if
	ls_ds.reset()
end subroutine

public subroutine uo_fcy (us_bg ls_us_bg);//·Ö³öÒ³
	//»ñÈ¡jyid,jytype,qc,jyz1,jyz2,jyz3,jyz4,jyz5
	string ls_id,ls_jytype,ls_list,ls_qc,ls_to_qc,ls_to_sh,ls_rq
	ls_id     = ls_us_bg.id
	ls_jytype = ls_us_bg.jytype
	ls_list   = ls_us_bg.list
	ls_qc   = ls_us_bg.qc
	ls_to_qc  = ls_us_bg.to_qc
	ls_to_sh  = ls_us_bg.to_sh
	ls_rq     = ls_us_bg.rq
	
	string ls_selectstr,ls_wherestr
	long ls_row,i
	//ÐÞ¸Äu_addr_bg
	ls_ds.dataobject = 'dat_bginfo'
	ls_ds.settransobject(sqlca)
	ls_selectstr = ls_ds.getsqlselect()
	ls_wherestr = " where bg_id like '" + ls_id + "' and bg_jytype like '" + ls_jytype + "' and bg_qc_addrid like '" + ls_qc + "' and bg_rq like '" + ls_rq + "'"
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_ds.setsqlselect(ls_selectstr)
	ls_ds.retrieve()
	ls_row = ls_ds.rowcount()
	for i = 1 to ls_row
		ls_ds.setitem(ls_row,'bg_id',ls_id)
		ls_ds.setitem(ls_row,'bg_jytype',ls_jytype)
		ls_ds.setitem(ls_row,'bg_list',ls_list)
		ls_ds.setitem(ls_row,'bg_qc_addrid',ls_qc)
		ls_ds.setitem(ls_row,'bg_to_qc_addrid',ls_to_qc)
		ls_ds.setitem(ls_row,'bg_to_sh_addrid',ls_to_sh)
	end for
	ls_ds.update()
	ls_ds.reset()
end subroutine

public subroutine uo_jyz (us_bg ls_us_bg);//¼ìÑé×é
	//»ñÈ¡jyid,jytype,qc,jyz1,jyz2,jyz3,jyz4,jyz5
	string ls_id,ls_jytype,ls_qc,ls_jyz1,ls_jyz2,ls_jyz3,ls_jyz4,ls_jyz5,ls_rq
	ls_id     = ls_us_bg.id
	ls_jytype = ls_us_bg.jytype
	ls_qc     = ls_us_bg.qc
	ls_jyz1   = ls_us_bg.jyz1
	ls_jyz2   = ls_us_bg.jyz2
	ls_jyz3   = ls_us_bg.jyz3
	ls_jyz4   = ls_us_bg.jyz4
	ls_jyz5   = ls_us_bg.jyz5
	ls_rq     = ls_us_bg.rq
	
	string ls_selectstr,ls_wherestr
	long ls_row,i
	//ÐÞ¸Äu_addr_bg
	ls_ds.dataobject = 'dat_bginfo'
	ls_ds.settransobject(sqlca)
	ls_selectstr = ls_ds.getsqlselect()
	ls_wherestr = " where bg_id like '" + ls_id + "' and bg_jytype like '" + ls_jytype + &
						"' and bg_qc_addrid like '" + ls_qc + "' and bg_rq like '" + ls_rq + "'"
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_ds.setsqlselect(ls_selectstr)
	ls_ds.retrieve()
	ls_row = ls_ds.rowcount()
	for i = 1 to ls_row
		ls_ds.setitem(ls_row,'bg_id',ls_id)
		ls_ds.setitem(ls_row,'bg_jytype',ls_jytype)
		ls_ds.setitem(ls_row,'bg_qc_addrid',ls_qc)
		ls_ds.setitem(ls_row,'bg_jyz1_addrid',ls_jyz1)
		ls_ds.setitem(ls_row,'bg_jyz2_addrid',ls_jyz2)
		ls_ds.setitem(ls_row,'bg_jyz3_addrid',ls_jyz3)
		ls_ds.setitem(ls_row,'bg_jyz4_addrid',ls_jyz4)
		ls_ds.setitem(ls_row,'bg_jyz5_addrid',ls_jyz5)
	end for
	ls_ds.update()
	ls_ds.reset()
end subroutine

public subroutine uo_modify (us_bg ls_us_bg);//ÐÞ¸Ä
	//»ñÈ¡jyid,jytype,qc,rq
	string ls_id,ls_jytype,ls_qc,ls_rq
	ls_id     = ls_us_bg.id
	ls_jytype = ls_us_bg.jytype
	ls_qc     = ls_us_bg.qc
	ls_rq     = ls_us_bg.rq
	//ÐÞ¸Äu_bg_bgÖÐµÄ¼ÇÂ¼
	string ls_selectstr,ls_wherestr
	long ls_row,i
	ls_ds.dataobject = 'dat_bginfo'
	ls_ds.settransobject(sqlca)
	ls_selectstr = ls_ds.getsqlselect()
	ls_wherestr = " where bg_id like '" + ls_id + "' and bg_jytype like '" + ls_jytype + &
						"' and bg_qc_addrid like '" + ls_qc + "' and bg_rq like '" + ls_rq + "'"
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_ds.setsqlselect(ls_selectstr)
	ls_ds.retrieve()
	ls_row = ls_ds.rowcount()
	for i =1 to ls_row
		ls_ds.setitem(ls_row,'bg_id',ls_id)
		ls_ds.setitem(ls_row,'bg_jytype',ls_jytype)
		ls_ds.setitem(ls_row,'bg_qc_addrid',ls_qc)
		ls_ds.setitem(ls_row,'bg_rq',ls_rq)
	end for
	ls_ds.update()
	ls_ds.reset()
end subroutine

public function datastore uo_query (us_bg ls_us_bg);//²éÑ¯
	//»ñÈ¡²ÎÊý
	string ls_id,ls_jytype,ls_qc,ls_sh,ls_sp,ls_jyz1,ls_jyz2,ls_jyz3,ls_jyz4,ls_jyz5,ls_to_qc,ls_to_sh,ls_list,ls_rq
	ls_id     = ls_us_bg.id
	ls_jytype = ls_us_bg.jytype
	ls_qc     = ls_us_bg.qc
	ls_sh     = ls_us_bg.sh
	ls_sp     = ls_us_bg.sp
	ls_jyz1   = ls_us_bg.jyz1
	ls_jyz2   = ls_us_bg.jyz2
	ls_jyz3   = ls_us_bg.jyz3
	ls_jyz4   = ls_us_bg.jyz4
	ls_jyz5   = ls_us_bg.jyz5
	ls_to_qc  = ls_us_bg.to_qc
	ls_to_sh  = ls_us_bg.to_sh
	ls_list   = ls_us_bg.list
	ls_rq     = ls_us_bg.rq
	//¸ñÊ½»¯²ÎÊý
	//²éÑ¯
	string ls_selectstr,ls_wherestr
	long ls_row,i
	ls_ds.dataobject = 'dat_bginfo'
	ls_ds.settransobject(sqlca)
	ls_selectstr = ls_ds.getsqlselect()
	ls_wherestr = " where bg_id like '" + ls_id + "' and bg_jytype like '" + ls_jytype + "' and bg_qc_addrid like '" + ls_qc + "' and bg_sh_addrid like '" + ls_sh &
	            + "' and bg_sp_addrid like '" + ls_sp + "' and bg_jyz1_addrid like '" + ls_jyz1 + "' and bg_jyz2_addrid like '" + ls_jyz2 + "' and bg_jyz3_addrid like '" &
					+ ls_jyz3 + "' and bg_jyz4_addrid like '" + ls_jyz4 + "' and bg_jyz5_addrid like '" + ls_jyz5 + "' and bg_to_qc_addrid like '" + ls_to_qc &
					+ "' and bg_to_sh_addrid like '" + ls_to_sh + "' and bg_list like '" + ls_list + "' and bg_rq like '" + ls_rq + "'"
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_ds.setsqlselect(ls_selectstr)
	ls_ds.retrieve()
	//·µ»Ø
	return(ls_ds)//Èç¹ûÊý¾ÝÁ¿´óÊ±£¬ÔõÑù»º½â????
end function

public subroutine uo_songshen (us_bg ls_us_bg);//ËÍÉóºË
	//»ñÈ¡jyid,jytype,qc,sh,sp
	string ls_id,ls_jytype,ls_qc,ls_sh,ls_sp,ls_rq
	ls_id     = ls_us_bg.id
	ls_jytype = ls_us_bg.jytype
	ls_qc     = ls_us_bg.qc
	ls_sh     = ls_us_bg.sh
	ls_sp     = ls_us_bg.sp
	ls_rq     = ls_us_bg.rq
	
	string ls_selectstr,ls_wherestr
	long ls_row,i
	//ÐÞ¸Äu_addr_bg
	ls_ds.dataobject = 'dat_bginfo'
	ls_ds.settransobject(sqlca)
	ls_selectstr = ls_ds.getsqlselect()
	ls_wherestr = " where bg_id like '" + ls_id + "' and bg_jytype like '" + ls_jytype + "' and bg_qc_addrid like '" + ls_qc + "' and bg_rq like '" + ls_rq + "'"
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_ds.setsqlselect(ls_selectstr)
	ls_ds.retrieve()
	ls_row = ls_ds.rowcount()
	for i = 1 to ls_row
		ls_ds.setitem(ls_row,'bg_id',ls_id)
		ls_ds.setitem(ls_row,'bg_jytype',ls_jytype)
		ls_ds.setitem(ls_row,'bg_qc_addrid',ls_qc)
		ls_ds.setitem(ls_row,'bg_sh_addrid',ls_sh)
		ls_ds.setitem(ls_row,'bg_sp_addrid',ls_sp)
	end for
	ls_ds.update()
	ls_ds.reset()
end subroutine

public subroutine uo_tuigao (us_bg ls_us_bg);//ÍË¸å
	//»ñÈ¡jyid,jytype,qc,sh,sp,jyz1,jyz2,jyz3,jyz4,jyz5,list,to_qc,to_sh
	string ls_id,ls_jytype,ls_qc,ls_sh,ls_sp,ls_jyz1,ls_jyz2,ls_jyz3,ls_jyz4,ls_jyz5,ls_list,ls_to_qc,ls_to_sh,ls_rq
	ls_id     = ls_us_bg.id
	ls_jytype = ls_us_bg.jytype
	ls_qc     = ls_us_bg.qc
	ls_sh     = ls_us_bg.sh
	ls_sp     = ls_us_bg.sp
	ls_jyz1   = ls_us_bg.jyz1
	ls_jyz2   = ls_us_bg.jyz2
	ls_jyz3   = ls_us_bg.jyz3
	ls_jyz4   = ls_us_bg.jyz4
	ls_jyz5   = ls_us_bg.jyz5
	ls_list   = ls_us_bg.list
	ls_to_qc  = ls_us_bg.to_qc
	ls_to_sh  = ls_us_bg.to_sh
	ls_rq     = ls_us_bg.rq
	
	string ls_selectstr,ls_wherestr
	long ls_row,i
	//ÐÞ¸Äu_bg_bgÖÐµÄ¼ÇÂ¼
	ls_ds.dataobject = 'dat_bginfo'
	ls_ds.settransobject(sqlca)
	ls_selectstr = ls_ds.getsqlselect()
	ls_wherestr = " where bg_id like '" + ls_id + "' and bg_jytype like '" + ls_jytype + "' and bg_qc_addrid like '" + ls_qc + "' and bg_rq like '" + ls_rq + "'"
	ls_selectstr = ls_selectstr + ls_wherestr
	ls_ds.setsqlselect(ls_selectstr)
	ls_ds.retrieve()
	ls_row = ls_ds.rowcount()
	for i = 1 to ls_row
		ls_ds.setitem(ls_row,'bg_id',ls_id)
		ls_ds.setitem(ls_row,'bg_qc_addrid',ls_qc)
		ls_ds.setitem(ls_row,'bg_sh_addrid',ls_sh)
		ls_ds.setitem(ls_row,'bg_sp_addrid',ls_sp)
		ls_ds.setitem(ls_row,'bg_jyz1_addrid',ls_jyz1)
		ls_ds.setitem(ls_row,'bg_jyz2_addrid',ls_jyz2)
		ls_ds.setitem(ls_row,'bg_jyz3_addrid',ls_jyz3)
		ls_ds.setitem(ls_row,'bg_jyz4_addrid',ls_jyz4)
		ls_ds.setitem(ls_row,'bg_jyz5_addrid',ls_jyz5)
		ls_ds.setitem(ls_row,'bg_list',ls_list)
		ls_ds.setitem(ls_row,'bg_to_qc_addrid',ls_to_qc)
		ls_ds.setitem(ls_row,'bg_to_sh_addrid',ls_to_sh)
		ls_ds.setitem(ls_row,'bg_rq',ls_rq)
	end for
	ls_ds.update()
	ls_ds.reset()

end subroutine

on uo_bg.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_bg.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

event constructor;ls_ds = create datastore
end event

event destructor;destroy ls_ds
end event

