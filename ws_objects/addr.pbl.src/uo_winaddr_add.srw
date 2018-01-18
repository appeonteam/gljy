$PBExportHeader$uo_winaddr_add.srw
forward
global type uo_winaddr_add from win_main
end type
type st_3 from statictext within uo_winaddr_add
end type
type st_2 from statictext within uo_winaddr_add
end type
type st_1 from statictext within uo_winaddr_add
end type
type st_addr from uo_statictext within uo_winaddr_add
end type
type cb_2 from uo_commandbutton within uo_winaddr_add
end type
type cb_1 from uo_commandbutton within uo_winaddr_add
end type
type gb_2 from uo_groupbox_xzdm within uo_winaddr_add
end type
type ddlb_sheng from dropdownlistbox within uo_winaddr_add
end type
type gb_1 from uo_groupbox_xzdm within uo_winaddr_add
end type
type ddlb_shi from dropdownlistbox within uo_winaddr_add
end type
type ddlb_quxian from dropdownlistbox within uo_winaddr_add
end type
end forward

global type uo_winaddr_add from win_main
integer width = 1417
integer height = 852
string title = "µØÇøÂëÑ¡Ôñ½çÃæ"
boolean minbox = false
boolean maxbox = false
boolean resizable = false
windowtype windowtype = response!
st_3 st_3
st_2 st_2
st_1 st_1
st_addr st_addr
cb_2 cb_2
cb_1 cb_1
gb_2 gb_2
ddlb_sheng ddlb_sheng
gb_1 gb_1
ddlb_shi ddlb_shi
ddlb_quxian ddlb_quxian
end type
global uo_winaddr_add uo_winaddr_add

type variables

end variables

forward prototypes
public subroutine uo_fun_interfaceinit ()
public subroutine uo_fun_exitclear (window p_1)
public subroutine uf_ddlb (string str, dropdownlistbox ddlb)
public subroutine uf_init (string addrid)
end prototypes

public subroutine uo_fun_interfaceinit ();this.title = 'ÇëÉèÖÃÈËÔ±µÄµØÇøÂë'
end subroutine

public subroutine uo_fun_exitclear (window p_1);close(p_1)
//	setnull(gs_addrid)
//	setnull(gs_addrname)

end subroutine

public subroutine uf_ddlb (string str, dropdownlistbox ddlb);string ls_sheng,ls_shi,ls_quxian
string ls_sbsf,ls_sbsfdm,ls_sbds,ls_sbdsdm
select sbsf,sbsfdm,sbds,sbdsdm into :ls_sbsf,:ls_sbsfdm,:ls_sbds,:ls_sbdsdm from a_jydw;
choose case str
	case 'sheng'
		ls_sheng = '__0000'
		ls_shi = '000000'
		ls_quxian = '000000'
	case 'shi'
		ls_sheng = '____00'
		ls_shi = '__0000'
		ls_quxian = '000000'
	case 'quxian'
		ls_sheng = '______'
		ls_shi = '____00'
		ls_quxian = '__0000'
end choose

datastore lds_1
lds_1 = create datastore
lds_1.dataobject = 'dat_xzdm'
lds_1.settransobject(sqlca)
lds_1.retrieve(ls_sheng,ls_shi,ls_quxian)

long ll_row_count
ll_row_count = lds_1.rowcount()

if ll_row_count > 0 then
	string ls_mc,ls_id
	int i
	ddlb.reset()
	for i = 1 to ll_row_count
		ls_mc = lds_1.getitemstring(i,'xzmc')
		ls_id = lds_1.getitemstring(i,'xzid')
		ddlb.additem(ls_mc + '(' + ls_id + ')')
	next
	choose case str
		case 'sheng'
			ddlb.selectitem(ls_sbsf + '(' + ls_sbsfdm + ')',0)
		case 'shi'
			ddlb.selectitem(ls_sbds + '(' + ls_sbdsdm + ')',0)
	end choose
end if

destroy lds_1
end subroutine

public subroutine uf_init (string addrid);string ls_id_sheng,ls_id_shi,ls_id_quxian
string ls_name_sheng,ls_name_shi,ls_name_quxian
ls_id_sheng = left(addrid,2) + "0000"
ls_id_shi = left(addrid,4) + "00"
ls_id_quxian = addrid

datastore lds_1
lds_1 = create datastore
lds_1.dataobject = "dat_z_xzdm"
lds_1.settransobject(sqlca)

lds_1.reset()
lds_1.retrieve(ls_id_sheng)
if lds_1.rowcount() > 0 then
	ls_name_sheng = lds_1.getitemstring(1,'xzmc')
	ddlb_sheng.text = ls_name_sheng + '(' + ls_id_sheng + ')'
end if

lds_1.reset()
lds_1.retrieve(ls_id_shi)
if lds_1.rowcount() > 0 then
	ls_name_shi = lds_1.getitemstring(1,'xzmc')
	ddlb_shi.event ue_init(ls_id_sheng)
	ddlb_shi.text = ls_name_shi + '(' + ls_id_shi + ')'
end if

lds_1.reset()
lds_1.retrieve(ls_id_quxian)
if lds_1.rowcount() > 0 then
	ls_name_quxian = lds_1.getitemstring(1,'xzmc')
	ddlb_quxian.event ue_init(ls_id_shi)
	ddlb_quxian.text = ls_name_quxian + '(' + ls_id_quxian + ')'
end if

st_addr.text = gs_addrid
destroy lds_1
end subroutine

on uo_winaddr_add.create
int iCurrent
call super::create
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.st_addr=create st_addr
this.cb_2=create cb_2
this.cb_1=create cb_1
this.gb_2=create gb_2
this.ddlb_sheng=create ddlb_sheng
this.gb_1=create gb_1
this.ddlb_shi=create ddlb_shi
this.ddlb_quxian=create ddlb_quxian
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.st_3
this.Control[iCurrent+2]=this.st_2
this.Control[iCurrent+3]=this.st_1
this.Control[iCurrent+4]=this.st_addr
this.Control[iCurrent+5]=this.cb_2
this.Control[iCurrent+6]=this.cb_1
this.Control[iCurrent+7]=this.gb_2
this.Control[iCurrent+8]=this.ddlb_sheng
this.Control[iCurrent+9]=this.gb_1
this.Control[iCurrent+10]=this.ddlb_shi
this.Control[iCurrent+11]=this.ddlb_quxian
end on

on uo_winaddr_add.destroy
call super::destroy
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.st_addr)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.gb_2)
destroy(this.ddlb_sheng)
destroy(this.gb_1)
destroy(this.ddlb_shi)
destroy(this.ddlb_quxian)
end on

event show;call super::show;//½çÃæ³õÊ¼»¯
string ls_sbdsdm
select sbdsdm into :ls_sbdsdm from a_jydw;

uo_fun_interfaceinit()
ddlb_sheng.event ue_init()
if gs_addrid <> '' then
	uf_init(gs_addrid)
else
	uf_init(ls_sbdsdm)
//	ddlb_shi.event ue_init('000000')
end if
end event

type st_3 from statictext within uo_winaddr_add
integer x = 690
integer y = 536
integer width = 174
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Çø/ÏØ"
boolean focusrectangle = false
end type

type st_2 from statictext within uo_winaddr_add
integer x = 727
integer y = 384
integer width = 78
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "ÊÐ"
boolean focusrectangle = false
end type

type st_1 from statictext within uo_winaddr_add
integer x = 727
integer y = 232
integer width = 64
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Ê¡"
boolean focusrectangle = false
end type

type st_addr from uo_statictext within uo_winaddr_add
integer x = 955
integer y = 216
integer width = 361
integer height = 68
integer textsize = -10
long backcolor = 134217748
string text = "µØÇøÂë"
alignment alignment = center!
boolean border = true
long bordercolor = 134217738
end type

type cb_2 from uo_commandbutton within uo_winaddr_add
integer x = 1006
integer y = 508
integer width = 274
integer height = 96
integer taborder = 40
integer textsize = -10
string text = "È¡Ïû"
end type

event clicked;call super::clicked;//ÍË³öÇåÀí
uo_fun_exitclear(parent)
win_xtgl_ry.ddlb_bm.event ue_init(gs_addrid)
win_xtgl_ry.dw_1.visible = true
////
win_xtgl_ry.cb_ok.visible = false
win_xtgl_ry.cb_ok.enabled = false
win_xtgl_ry.cb_cancel.visible = false
win_xtgl_ry.cb_cancel.enabled = false
//
win_xtgl_ry.cb_exit.visible = true
win_xtgl_ry.cb_exit.enabled = true
win_xtgl_ry.cb_dele.visible = true
win_xtgl_ry.cb_dele.enabled = true
win_xtgl_ry.cb_edit.visible = true
win_xtgl_ry.cb_edit.enabled = true
win_xtgl_ry.cb_add.visible = true
win_xtgl_ry.cb_add.enabled = true
//
win_xtgl_ry.sle_mc.text = ''
win_xtgl_ry.ddlb_bm.selectitem(0)
win_xtgl_ry.sle_jyid.text = ''
win_xtgl_ry.sle_dm.text = ''
win_xtgl_ry.sle_jymx.text = ''
win_xtgl_ry.sle_pass.text = ''
win_xtgl_ry.sle_zw.text = ''
win_xtgl_ry.sle_jyyh.text = ''
win_xtgl_ry.ddlb_jyjb.selectitem(0)
win_xtgl_ry.ddlb_zhmark.selectitem(0)
win_xtgl_ry.cbx_dcbgqx.checked = false
//mle_bz.text = ''
//
win_xtgl_ry.cbx_px.checked = false
win_xtgl_ry.cbx_px.enabled = true
//**Modify by FFF**//
win_xtgl_ry.lv_Dest.DeleteItems()
win_xtgl_ry.lv_Source.Enabled = false
win_xtgl_ry.lv_Dest.Enabled = false
win_xtgl_ry.cbx_pxgl.Checked = false
win_xtgl_ry.cbx_pxsh.Checked = false
win_xtgl_ry.cbx_pxgl.Enabled = false
win_xtgl_ry.cbx_pxsh.Enabled = false
//**Modify end **//

//
win_xtgl_ry.cbx_rs.checked = false
win_xtgl_ry.cbx_rs.enabled = true

win_xtgl_ry.cbx_rs1.checked = false
win_xtgl_ry.cbx_rs1.enabled = false
win_xtgl_ry.cbx_rs2.checked = false
win_xtgl_ry.cbx_rs2.enabled = false
win_xtgl_ry.cbx_rs3.checked = false
win_xtgl_ry.cbx_rs3.enabled = false
win_xtgl_ry.cbx_rs4.checked = false
win_xtgl_ry.cbx_rs4.enabled = false
win_xtgl_ry.cbx_rs5.checked = false
win_xtgl_ry.cbx_rs5.enabled = false
win_xtgl_ry.cbx_rs6.checked = false
win_xtgl_ry.cbx_rs6.enabled = false
win_xtgl_ry.cbx_rs7.checked = false
win_xtgl_ry.cbx_rs7.enabled = false
win_xtgl_ry.cbx_rs8.checked = false
win_xtgl_ry.cbx_rs8.enabled = false
//sb
win_xtgl_ry.cbx_sb.checked = false
win_xtgl_ry.cbx_sb.enabled = true

win_xtgl_ry.cbx_sb1.checked = false
win_xtgl_ry.cbx_sb1.enabled = false
win_xtgl_ry.cbx_sb2.checked = false
win_xtgl_ry.cbx_sb2.enabled = false
win_xtgl_ry.cbx_sb3.checked = false
win_xtgl_ry.cbx_sb3.enabled = false
win_xtgl_ry.cbx_sb4.checked = false
win_xtgl_ry.cbx_sb4.enabled = false
win_xtgl_ry.cbx_sb5.checked = false
win_xtgl_ry.cbx_sb5.enabled = false
//jf
win_xtgl_ry.cbx_jf.checked = false
win_xtgl_ry.cbx_jf.enabled = true

win_xtgl_ry.cbx_jf1.checked = false
win_xtgl_ry.cbx_jf1.enabled = false
win_xtgl_ry.cbx_jf2.checked = false
win_xtgl_ry.cbx_jf2.enabled = false
//ts
win_xtgl_ry.cbx_ts.checked = false
win_xtgl_ry.cbx_ts.enabled = true

win_xtgl_ry.cbx_ts1.checked = false
win_xtgl_ry.cbx_ts1.enabled = false
win_xtgl_ry.cbx_ts2.checked = false
win_xtgl_ry.cbx_ts2.enabled = false
//dt
win_xtgl_ry.cbx_dt.checked = false
win_xtgl_ry.cbx_dt.enabled = true
//
win_xtgl_ry.cbx_jy.checked = false
win_xtgl_ry.cbx_jy.enabled = true


// ´óÎÄ±¾×Ö¶Î
FileDelete('c:\jyoa\qm.bmp')
//////////////////////////////////////
end event

type cb_1 from uo_commandbutton within uo_winaddr_add
integer x = 1006
integer y = 392
integer width = 274
integer height = 96
integer taborder = 40
integer textsize = -10
string text = "È·ÈÏ"
end type

event clicked;call super::clicked;//Êý¾Ý±£´æ
string ls_sheng,ls_shi,ls_quxian
string ls_name_sheng,ls_name_shi,ls_name_quxian
string ls_ry_id,ls_ry_addrid,ls_ry_addrname

if parent.ddlb_sheng.text = '' then
	ls_sheng = '00'
	ls_name_sheng = ''
else
	ls_sheng  = mid(trim(mid(right(parent.ddlb_sheng.text,8),2,6)),1,2)
	ls_name_sheng = trim(left(parent.ddlb_sheng.text,len(parent.ddlb_sheng.text) - 8))
end if

if parent.ddlb_shi.text = '' then
	ls_shi = '00'
	ls_name_shi = ''
else
	ls_shi    = mid(trim(mid(right(parent.ddlb_shi.text,8),2,6)),3,2)
	ls_name_shi = trim(left(parent.ddlb_shi.text,len(parent.ddlb_shi.text) - 8))
end if

if parent.ddlb_quxian.text = '' then
	ls_quxian = '00'
	ls_name_quxian = ''
else
	ls_quxian = mid(trim(mid(right(parent.ddlb_quxian.text,8),2,6)),5,2)
	ls_name_quxian = trim(left(parent.ddlb_quxian.text,len(parent.ddlb_quxian.text) - 8))
end if

ls_ry_id = gs_keyno
ls_ry_addrid = ls_sheng + ls_shi + ls_quxian
ls_ry_addrname = ls_name_sheng + ls_name_shi + ls_name_quxian

if left(ls_ry_addrid,2) = '00' then
	messagebox("ÌáÊ¾","ÇëÕýÈ·Ñ¡ÔñµØÇøÂë!")
else
	gs_addrid = ls_ry_addrid
	gs_addrname = ls_ry_addrname
	win_xtgl_ry.ddlb_bm.event ue_init(gs_addrid)
//	parent.cb_2.triggerevent(clicked!)
close(parent)
end if
end event

type gb_2 from uo_groupbox_xzdm within uo_winaddr_add
integer x = 919
integer y = 68
integer width = 430
integer height = 600
integer taborder = 20
string text = ""
end type

type ddlb_sheng from dropdownlistbox within uo_winaddr_add
event ue_init ( )
integer x = 119
integer y = 212
integer width = 549
integer height = 384
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
boolean sorted = false
boolean vscrollbar = true
end type

event ue_init();uf_ddlb('sheng',this)
end event

event selectionchanged;string ls_mc,ls_id
ls_id = trim(mid(right(this.text,8),2,6))
ls_mc = trim(left(this.text,len(this.text) - 8))
parent.ddlb_shi.event ue_init(ls_id)
ddlb_quxian.reset()
ddlb_shi.text = ""
ddlb_quxian.text = ""
end event

type gb_1 from uo_groupbox_xzdm within uo_winaddr_add
integer x = 41
integer y = 72
integer width = 869
integer height = 596
integer taborder = 10
integer textsize = -10
string text = "µØÇøÂëÑ¡Ôñ"
end type

type ddlb_shi from dropdownlistbox within uo_winaddr_add
event ue_init ( string str )
integer x = 119
integer y = 360
integer width = 549
integer height = 384
integer taborder = 50
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
boolean sorted = false
boolean vscrollbar = true
end type

event ue_init(string str);if str = '000000' then
	uf_ddlb('shi',this)
else
	string ls_sheng,ls_shi,ls_quxian
	ls_sheng = left(str,2) + '__00'
	ls_shi = left(str,2) + '0000'
	ls_quxian = '000000'
	
	datastore lds_1
	lds_1 = create datastore
	lds_1.dataobject = 'dat_xzdm'
	lds_1.settransobject(sqlca)
	lds_1.retrieve(ls_sheng,ls_shi,ls_quxian)
	
	long ll_row_count
	ll_row_count = lds_1.rowcount()
	
	if ll_row_count > 0 then
		string ls_mc,ls_id
		int i
		this.reset()
		for i = 1 to ll_row_count
			ls_mc = lds_1.getitemstring(i,'xzmc')
			ls_id = lds_1.getitemstring(i,'xzid')
			this.additem(ls_mc + '(' + ls_id + ')')
		next
	end if
	
	destroy lds_1
end if
end event

event selectionchanged;string ls_mc,ls_id
ls_id = trim(mid(right(this.text,8),2,6))
ls_mc = trim(left(this.text,len(this.text) - 8))

parent.ddlb_quxian.event ue_init(ls_id)

ddlb_quxian.text = ""
end event

type ddlb_quxian from dropdownlistbox within uo_winaddr_add
event ue_init ( string str )
integer x = 119
integer y = 508
integer width = 549
integer height = 384
integer taborder = 50
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
boolean sorted = false
boolean vscrollbar = true
end type

event ue_init(string str);if str = '000000' then
	uf_ddlb('quxian',this)
else
	string ls_sheng,ls_shi,ls_quxian
	ls_sheng = left(str,4) + '__'
	ls_shi = left(str,4) + '00'
	ls_quxian = '000000'
	
	datastore lds_1
	lds_1 = create datastore
	lds_1.dataobject = 'dat_xzdm'
	lds_1.settransobject(sqlca)
	lds_1.retrieve(ls_sheng,ls_shi,ls_quxian)
	
	long ll_row_count
	ll_row_count = lds_1.rowcount()
	
	if ll_row_count > 0 then
		string ls_mc,ls_id
		int i
		this.reset()
		for i = 1 to ll_row_count
			ls_mc = lds_1.getitemstring(i,'xzmc')
			ls_id = lds_1.getitemstring(i,'xzid')
			this.additem(ls_mc + '(' + ls_id + ')')
		next
	end if
	destroy lds_1
end if
end event

event selectionchanged;//ÎÞ´úÂë
end event

