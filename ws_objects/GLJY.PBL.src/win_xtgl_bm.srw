$PBExportHeader$win_xtgl_bm.srw
$PBExportComments$¼ìÑé²¿ÃÅ
forward
global type win_xtgl_bm from window
end type
type sle_dqjm from singlelineedit within win_xtgl_bm
end type
type st_9 from statictext within win_xtgl_bm
end type
type st_8 from statictext within win_xtgl_bm
end type
type st_7 from statictext within win_xtgl_bm
end type
type st_6 from statictext within win_xtgl_bm
end type
type ddlb_quxian from dropdownlistbox within win_xtgl_bm
end type
type ddlb_shi from dropdownlistbox within win_xtgl_bm
end type
type ddlb_sheng from dropdownlistbox within win_xtgl_bm
end type
type st_5 from statictext within win_xtgl_bm
end type
type st_4 from statictext within win_xtgl_bm
end type
type st_1 from statictext within win_xtgl_bm
end type
type sle_bmhs from singlelineedit within win_xtgl_bm
end type
type st_3 from statictext within win_xtgl_bm
end type
type st_2 from statictext within win_xtgl_bm
end type
type st_title from statictext within win_xtgl_bm
end type
type st_xt from statictext within win_xtgl_bm
end type
type st_date from statictext within win_xtgl_bm
end type
type sle_mlmc from singlelineedit within win_xtgl_bm
end type
type sle_mldh from singlelineedit within win_xtgl_bm
end type
type sle_mlid from singlelineedit within win_xtgl_bm
end type
type dw_1 from datawindow within win_xtgl_bm
end type
type cb_exit from commandbutton within win_xtgl_bm
end type
type cb_cancel from commandbutton within win_xtgl_bm
end type
type cb_add from commandbutton within win_xtgl_bm
end type
type cb_edit from commandbutton within win_xtgl_bm
end type
type cb_ok from commandbutton within win_xtgl_bm
end type
type st_space from statictext within win_xtgl_bm
end type
type cb_dele from commandbutton within win_xtgl_bm
end type
end forward

global type win_xtgl_bm from window
integer x = 9
integer y = 4
integer width = 3662
integer height = 2428
windowtype windowtype = child!
long backcolor = 33552359
sle_dqjm sle_dqjm
st_9 st_9
st_8 st_8
st_7 st_7
st_6 st_6
ddlb_quxian ddlb_quxian
ddlb_shi ddlb_shi
ddlb_sheng ddlb_sheng
st_5 st_5
st_4 st_4
st_1 st_1
sle_bmhs sle_bmhs
st_3 st_3
st_2 st_2
st_title st_title
st_xt st_xt
st_date st_date
sle_mlmc sle_mlmc
sle_mldh sle_mldh
sle_mlid sle_mlid
dw_1 dw_1
cb_exit cb_exit
cb_cancel cb_cancel
cb_add cb_add
cb_edit cb_edit
cb_ok cb_ok
st_space st_space
cb_dele cb_dele
end type
global win_xtgl_bm win_xtgl_bm

type variables
string is_addrid
end variables

forward prototypes
public subroutine uf_ddlb (string str, dropdownlistbox ddlb)
end prototypes

public subroutine uf_ddlb (string str, dropdownlistbox ddlb);string ls_sheng,ls_shi,ls_quxian
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
end if

destroy lds_1
end subroutine

event open;st_xt.text = gs_jydw
st_date.text=string(date(fun_datetime('date')),'yyyyÄêmmÔÂddÈÕ')
st_title.text = "²¿ÃÅÎ¬»¤"
settransobject(dw_1,sqlca)
retrieve(dw_1)

sle_mlid.enabled = false
sle_mldh.enabled = false
sle_mlmc.enabled = false
sle_bmhs.enabled = false
sle_dqjm.enabled = false

ddlb_sheng.enabled = false
ddlb_shi.enabled = false
ddlb_quxian.enabled = false

cb_ok.visible = false
cb_cancel.visible = false

ddlb_sheng.event ue_init()
ddlb_shi.event ue_init('000000')
ddlb_quxian.event ue_init('000000')
end event

on win_xtgl_bm.create
this.sle_dqjm=create sle_dqjm
this.st_9=create st_9
this.st_8=create st_8
this.st_7=create st_7
this.st_6=create st_6
this.ddlb_quxian=create ddlb_quxian
this.ddlb_shi=create ddlb_shi
this.ddlb_sheng=create ddlb_sheng
this.st_5=create st_5
this.st_4=create st_4
this.st_1=create st_1
this.sle_bmhs=create sle_bmhs
this.st_3=create st_3
this.st_2=create st_2
this.st_title=create st_title
this.st_xt=create st_xt
this.st_date=create st_date
this.sle_mlmc=create sle_mlmc
this.sle_mldh=create sle_mldh
this.sle_mlid=create sle_mlid
this.dw_1=create dw_1
this.cb_exit=create cb_exit
this.cb_cancel=create cb_cancel
this.cb_add=create cb_add
this.cb_edit=create cb_edit
this.cb_ok=create cb_ok
this.st_space=create st_space
this.cb_dele=create cb_dele
this.Control[]={this.sle_dqjm,&
this.st_9,&
this.st_8,&
this.st_7,&
this.st_6,&
this.ddlb_quxian,&
this.ddlb_shi,&
this.ddlb_sheng,&
this.st_5,&
this.st_4,&
this.st_1,&
this.sle_bmhs,&
this.st_3,&
this.st_2,&
this.st_title,&
this.st_xt,&
this.st_date,&
this.sle_mlmc,&
this.sle_mldh,&
this.sle_mlid,&
this.dw_1,&
this.cb_exit,&
this.cb_cancel,&
this.cb_add,&
this.cb_edit,&
this.cb_ok,&
this.st_space,&
this.cb_dele}
end on

on win_xtgl_bm.destroy
destroy(this.sle_dqjm)
destroy(this.st_9)
destroy(this.st_8)
destroy(this.st_7)
destroy(this.st_6)
destroy(this.ddlb_quxian)
destroy(this.ddlb_shi)
destroy(this.ddlb_sheng)
destroy(this.st_5)
destroy(this.st_4)
destroy(this.st_1)
destroy(this.sle_bmhs)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_title)
destroy(this.st_xt)
destroy(this.st_date)
destroy(this.sle_mlmc)
destroy(this.sle_mldh)
destroy(this.sle_mlid)
destroy(this.dw_1)
destroy(this.cb_exit)
destroy(this.cb_cancel)
destroy(this.cb_add)
destroy(this.cb_edit)
destroy(this.cb_ok)
destroy(this.st_space)
destroy(this.cb_dele)
end on

type sle_dqjm from singlelineedit within win_xtgl_bm
integer x = 2889
integer y = 1492
integer width = 389
integer height = 92
integer taborder = 31
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean autohscroll = false
integer limit = 4
borderstyle borderstyle = stylelowered!
end type

type st_9 from statictext within win_xtgl_bm
integer x = 2574
integer y = 1508
integer width = 329
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "µØÇø¼òÂë"
boolean focusrectangle = false
end type

type st_8 from statictext within win_xtgl_bm
integer x = 3063
integer y = 1396
integer width = 192
integer height = 64
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 80269528
string text = "Çø/ÏØ"
boolean focusrectangle = false
end type

type st_7 from statictext within win_xtgl_bm
integer x = 2181
integer y = 1400
integer width = 73
integer height = 56
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 80269528
string text = "ÊÐ"
boolean focusrectangle = false
end type

type st_6 from statictext within win_xtgl_bm
integer x = 1390
integer y = 1400
integer width = 64
integer height = 56
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 80269528
string text = "Ê¡"
boolean focusrectangle = false
end type

type ddlb_quxian from dropdownlistbox within win_xtgl_bm
event ue_init ( string str )
integer x = 2299
integer y = 1372
integer width = 745
integer height = 476
integer taborder = 30
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
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

string ls_id_sheng,ls_id_shi,ls_id_quxian,ls_addrid
if parent.ddlb_sheng.text = '' then
	ls_id_sheng = '00'
else
	ls_id_sheng = left(mid(right(parent.ddlb_sheng.text,8),2,6),2)
end if
if parent.ddlb_shi.text = '' then
	ls_id_shi = '00'
else
	ls_id_shi = mid(mid(right(parent.ddlb_shi.text,8),2,6),3,2)
end if
if parent.ddlb_quxian.text = '' then
	ls_id_quxian = '00'
else
	ls_id_quxian = right(mid(right(parent.ddlb_quxian.text,8),2,6),2)
end if
ls_addrid = ls_id_sheng + ls_id_shi + ls_id_quxian
int i
string dqjm
select count(*)
into :i
from a_bmcode
where addrid like :ls_addrid;

if i <> 0 then 
	select addrbg
	into :dqjm
	from a_bmcode
	where addrid like :ls_addrid;
	sle_dqjm.text = dqjm
	sle_dqjm.enabled = false
else
	sle_dqjm.enabled = true
	sle_dqjm.text = ""
end if
end event

type ddlb_shi from dropdownlistbox within win_xtgl_bm
event ue_init ( string str )
integer x = 1495
integer y = 1372
integer width = 667
integer height = 476
integer taborder = 30
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
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

string ls_id_sheng,ls_id_shi,ls_id_quxian,ls_addrid
if parent.ddlb_sheng.text = '' then
	ls_id_sheng = '00'
else
	ls_id_sheng = left(mid(right(parent.ddlb_sheng.text,8),2,6),2)
end if
if parent.ddlb_shi.text = '' then
	ls_id_shi = '00'
else
	ls_id_shi = mid(mid(right(parent.ddlb_shi.text,8),2,6),3,2)
end if
if parent.ddlb_quxian.text = '' then
	ls_id_quxian = '00'
else
	ls_id_quxian = right(mid(right(parent.ddlb_quxian.text,8),2,6),2)
end if
ls_addrid = ls_id_sheng + ls_id_shi + ls_id_quxian
int i
string dqjm
select count(*)
into :i
from a_bmcode
where addrid like :ls_addrid;

if i <> 0 then 
	select addrbg
	into :dqjm
	from a_bmcode
	where addrid like :ls_addrid;
	sle_dqjm.text = dqjm
	sle_dqjm.enabled = false
else
	sle_dqjm.enabled = true
	sle_dqjm.text = ""
end if
end event

type ddlb_sheng from dropdownlistbox within win_xtgl_bm
event ue_init ( )
integer x = 704
integer y = 1372
integer width = 663
integer height = 476
integer taborder = 31
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean sorted = false
boolean vscrollbar = true
end type

event ue_init();uf_ddlb('sheng',this)
//string ls_id_sheng,ls_id_shi,ls_id_quxian
//string ls_name_sheng,ls_name_shi,ls_name_quxian
//ls_id_sheng = left(addrid,2) + "0000"
//ls_id_shi = left(addrid,4) + "00"
//ls_id_quxian = addrid
//
//datastore lds_1
//lds_1 = create datastore
//lds_1.dataobject = "dat_z_xzdm"
//lds_1.settransobject(sqlca)
//
//lds_1.reset()
//lds_1.retrieve(ls_id_sheng)
//if lds_1.rowcount() > 0 then
//	ls_name_sheng = lds_1.getitemstring(1,'xzmc')
//	ddlb_sheng.text = ls_name_sheng + '(' + ls_id_sheng + ')'
//end if
//
//lds_1.reset()
//lds_1.retrieve(ls_id_shi)
//if lds_1.rowcount() > 0 then
//	ls_name_shi = lds_1.getitemstring(1,'xzmc')
//	ddlb_shi.event ue_init(ls_id_sheng)
//	ddlb_shi.text = ls_name_shi + '(' + ls_id_shi + ')'
//end if
//
//lds_1.reset()
//lds_1.retrieve(ls_id_quxian)
//if lds_1.rowcount() > 0 then
//	ls_name_quxian = lds_1.getitemstring(1,'xzmc')
//	ddlb_quxian.event ue_init(ls_id_shi)
//	ddlb_quxian.text = ls_name_quxian + '(' + ls_id_quxian + ')'
//end if
//
////st_addr.text = gs_addrid
//destroy lds_1
end event

event selectionchanged;string ls_mc,ls_id
ls_id = trim(mid(right(this.text,8),2,6))
ls_mc = trim(left(this.text,len(this.text) - 8))

parent.ddlb_shi.event ue_init(ls_id)
ddlb_quxian.reset()
ddlb_shi.text = ""
ddlb_quxian.text = ""

string ls_id_sheng,ls_id_shi,ls_id_quxian,ls_addrid
if parent.ddlb_sheng.text = '' then
	ls_id_sheng = '00'
else
	ls_id_sheng = left(mid(right(parent.ddlb_sheng.text,8),2,6),2)
end if
if parent.ddlb_shi.text = '' then
	ls_id_shi = '00'
else
	ls_id_shi = mid(mid(right(parent.ddlb_shi.text,8),2,6),3,2)
end if
if parent.ddlb_quxian.text = '' then
	ls_id_quxian = '00'
else
	ls_id_quxian = right(mid(right(parent.ddlb_quxian.text,8),2,6),2)
end if
ls_addrid = ls_id_sheng + ls_id_shi + ls_id_quxian
int i
string dqjm
select count(*)
into :i
from a_bmcode
where addrid like :ls_addrid;

if i <> 0 then 
	select addrbg
	into :dqjm
	from a_bmcode
	where addrid like :ls_addrid;
	sle_dqjm.text = dqjm
	sle_dqjm.enabled = false
else
	sle_dqjm.enabled = true
	sle_dqjm.text = ""
end if
end event

type st_5 from statictext within win_xtgl_bm
integer x = 357
integer y = 1388
integer width = 329
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "µØÇøÂë"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_4 from statictext within win_xtgl_bm
integer x = 667
integer y = 1684
integer width = 2574
integer height = 64
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
boolean enabled = false
string text = "ºËËãºÅÊÇ²ÎÓë¼Æ·Ñµ¥Í³¼ÆµÄÎ¨Ò»ºÅÍ¬Ê±Ò²ÊÇÖÆ¶¨¼ìÑé¼Æ»®µÄµÇ¼Ç±íºÅµÄÊ××ÖÄ¸¡£"
boolean focusrectangle = false
end type

type st_1 from statictext within win_xtgl_bm
integer x = 1989
integer y = 1508
integer width = 251
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "ºËËãºÅ"
boolean focusrectangle = false
end type

type sle_bmhs from singlelineedit within win_xtgl_bm
integer x = 2254
integer y = 1492
integer width = 315
integer height = 92
integer taborder = 21
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within win_xtgl_bm
integer x = 1019
integer y = 1508
integer width = 329
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "²¿ÃÅÃû³Æ"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_2 from statictext within win_xtgl_bm
integer x = 357
integer y = 1508
integer width = 329
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "²¿ÃÅ±àºÅ"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_title from statictext within win_xtgl_bm
integer x = 562
integer y = 132
integer width = 1266
integer height = 168
integer textsize = -28
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 255
long backcolor = 16777215
boolean enabled = false
string text = "Ëð  Òæ  ±í"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_xt from statictext within win_xtgl_bm
integer x = 1989
integer y = 132
integer width = 1189
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 128
long backcolor = 16777215
boolean enabled = false
string text = "ÆóÒµÖÇÄÜ»¯¹ÜÀíÏµÍ³"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_date from statictext within win_xtgl_bm
integer x = 1989
integer y = 232
integer width = 1189
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 128
long backcolor = 16777215
boolean enabled = false
string text = "1999Äê1ÔÂ20ÈÕ"
alignment alignment = center!
boolean focusrectangle = false
end type

type sle_mlmc from singlelineedit within win_xtgl_bm
integer x = 1362
integer y = 1492
integer width = 613
integer height = 92
integer taborder = 20
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type sle_mldh from singlelineedit within win_xtgl_bm
integer x = 699
integer y = 1492
integer width = 311
integer height = 92
integer taborder = 30
integer textsize = -14
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 8388608
long backcolor = 16777215
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type sle_mlid from singlelineedit within win_xtgl_bm
boolean visible = false
integer x = 370
integer y = 1364
integer width = 512
integer height = 104
integer taborder = 10
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within win_xtgl_bm
integer x = 357
integer y = 384
integer width = 2875
integer height = 912
integer taborder = 50
string dataobject = "dw_xtgl_bm"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;if row > 0 then
   selectrow(0,false)
	selectrow(row,true)
	gs_keyno = getitemstring(row,'bmid')
else
	setnull(gs_keyno)
end if

end event

event doubleclicked;cb_edit.triggerevent(clicked!)
end event

type cb_exit from commandbutton within win_xtgl_bm
event clicked pbm_bnclicked
integer x = 2441
integer y = 1784
integer width = 343
integer height = 128
integer taborder = 90
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË³ö"
boolean cancel = true
end type

event clicked;close(win_xtgl_bm)
end event

type cb_cancel from commandbutton within win_xtgl_bm
integer x = 2080
integer y = 1780
integer width = 402
integer height = 136
integer taborder = 60
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
boolean enabled = false
string text = "·ÅÆú"
boolean cancel = true
end type

event clicked;dw_1.enabled = true

sle_mlid.text = ''
sle_mldh.text = ''
sle_mlmc.text = ''
sle_bmhs.text = ''
sle_dqjm.text = ''

sle_mlid.enabled = false
sle_mldh.enabled = false
sle_mlmc.enabled = false
sle_bmhs.enabled = false
sle_dqjm.enabled = false

ddlb_sheng.enabled = false
ddlb_shi.enabled = false
ddlb_quxian.enabled = false

cb_ok.visible = false
cb_ok.enabled = false
cb_cancel.visible = false
cb_cancel.enabled = false

cb_exit.visible = true
cb_exit.enabled = true
cb_dele.visible = true
cb_dele.enabled = true
cb_edit.visible = true
cb_edit.enabled = true
cb_add.visible = true
cb_add.enabled = true

gs_keyno = ''

end event

type cb_add from commandbutton within win_xtgl_bm
integer x = 891
integer y = 1784
integer width = 343
integer height = 128
integer taborder = 100
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "Ôö¼Ó"
boolean default = true
end type

event clicked;string  dwlastno
ddlb_sheng.allowedit = true
ddlb_shi.allowedit = true
ddlb_quxian.allowedit = true
ddlb_sheng.text = ""
ddlb_shi.text = ""
ddlb_quxian.text = ""
ddlb_sheng.allowedit = false
ddlb_shi.allowedit = false
ddlb_quxian.allowedit = false
select max(bmid) into :dwlastno from a_bmcode;
 setnull(gs_addrid)
 setnull(gs_addrname)
if sqlca.sqlcode = 0  then
   if isnull(dwlastno) then
	   sle_mldh.text = '10001'
   else
	   sle_mldh.text = string(long(dwlastno)+1)
   end if
else
	sle_mldh.text = '10001'
end if

dw_1.enabled = false
gi_modimark = 1
sle_mlid.enabled = true
sle_mldh.enabled = true
sle_mlmc.enabled = true
sle_bmhs.enabled = true
sle_dqjm.enabled = true

ddlb_sheng.enabled = true
ddlb_shi.enabled = true
ddlb_quxian.enabled = true
//
//sle_mldh.text = ''
sle_mlmc.text = ''
sle_bmhs.text = ''
//
cb_ok.visible = true
cb_ok.enabled = true
cb_cancel.visible = true
cb_cancel.enabled = true
cb_exit.visible = false
cb_exit.enabled = false
cb_dele.visible = false
cb_dele.enabled = false
cb_edit.visible = false
cb_edit.enabled = false
cb_add.visible = false
cb_add.enabled = false
string addrid
string ls_id_sheng,ls_id_shi,ls_id_quxian
string ls_name_sheng,ls_name_shi,ls_name_quxian
select sbdsdm into :addrid from a_jydw;
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

//st_addr.text = gs_addrid
destroy lds_1

end event

type cb_edit from commandbutton within win_xtgl_bm
integer x = 1408
integer y = 1784
integer width = 343
integer height = 128
integer taborder = 40
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÐÞ¸Ä"
end type

event clicked;if dw_1.rowcount() <= 0 then
   return
end if	

integer currno

if isnull(gs_keyno) or trim(gs_keyno) = '' then
   messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÐÞ¸ÄµÄ²¿ÃÅÃû³Æ£¡')	
	return
end if	

dw_1.enabled = false
ddlb_sheng.event ue_init()
string ls_addrid
select bmid,bmmc,bmhs,addrid,addrbg
into   :sle_mldh.text,:sle_mlmc.text,:sle_bmhs.text,:ls_addrid,:sle_dqjm.text
from   a_bmcode
where  bmid = :gs_keyno;
//ddlb_sheng.event ue_init(ls_addrid)
string ls_sheng,ls_shi,ls_quxian
if right(ls_addrid,4) = '0000' then
	ls_sheng = ls_addrid
	ls_shi = '000000'
	ls_quxian = '000000'
else
	if right(ls_addrid,2) = '00' then
		ls_sheng = left(ls_addrid,2) + '0000'
		ls_shi = ls_addrid
		ls_quxian = '000000'
	else
		ls_sheng = left(ls_addrid,2) + '0000'
		ls_shi = left(ls_addrid,4) + '00'
		ls_quxian = ls_addrid
	end if
end if

datastore lds_1
lds_1 = create datastore
lds_1.dataobject = 'dat_z_xzdm'
lds_1.settransobject(sqlca)
lds_1.retrieve(ls_sheng)
string ls_mc,ls_id
if lds_1.rowcount() > 0 then
	ls_mc = lds_1.getitemstring(1,'xzmc')
	ls_id = lds_1.getitemstring(1,'xzid')
	parent.ddlb_sheng.text = ls_mc + '(' + ls_id + ')'
end if
ddlb_shi.event ue_init(ls_shi)
lds_1.reset()
lds_1.retrieve(ls_shi)
if lds_1.rowcount() > 0 then
	ls_mc = lds_1.getitemstring(1,'xzmc')
	ls_id = lds_1.getitemstring(1,'xzid')
	parent.ddlb_shi.text = ls_mc + '(' + ls_id + ')'
end if
ddlb_quxian.event ue_init(ls_quxian)
lds_1.reset()
lds_1.retrieve(ls_quxian)
if lds_1.rowcount() > 0 then
	ls_mc = lds_1.getitemstring(1,'xzmc')
	ls_id = lds_1.getitemstring(1,'xzid')
	parent.ddlb_quxian.text = ls_mc + '(' + ls_id + ')'
end if
destroy lds_1

gi_modimark = 2
sle_mlid.enabled = true
sle_mldh.enabled = true
sle_mlmc.enabled = true
sle_bmhs.enabled = true
sle_dqjm.enabled = true

ddlb_sheng.enabled = true
ddlb_shi.enabled = true
ddlb_quxian.enabled = true

cb_ok.visible = true
cb_ok.enabled = true
cb_cancel.visible = true
cb_cancel.enabled = true

cb_exit.visible = false
cb_exit.enabled = false
cb_dele.visible = false
cb_dele.enabled = false
cb_edit.visible = false
cb_edit.enabled = false
cb_add.visible = false
cb_add.enabled = false

end event

type cb_ok from commandbutton within win_xtgl_bm
integer x = 1189
integer y = 1780
integer width = 402
integer height = 136
integer taborder = 70
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
boolean enabled = false
string text = "È·ÈÏ"
boolean default = true
end type

event clicked;string mlid,mldh,mlmc,bmhs,dqjm
integer currnum,okmark,leadnum

okmark = 0
mlid = trim(sle_mlid.text)
mldh = trim(sle_mldh.text)
mlmc = trim(sle_mlmc.text)
bmhs = trim(sle_bmhs.text)
dqjm = trim(sle_dqjm.text)
string ls_addrid
string ls_id_sheng,ls_id_shi,ls_id_quxian
if parent.ddlb_sheng.text = '' then
	ls_id_sheng = '00'
else
	ls_id_sheng = left(mid(right(parent.ddlb_sheng.text,8),2,6),2)
end if
if parent.ddlb_shi.text = '' then
	ls_id_shi = '00'
else
	ls_id_shi = mid(mid(right(parent.ddlb_shi.text,8),2,6),3,2)
end if
if parent.ddlb_quxian.text = '' then
	ls_id_quxian = '00'
else
	ls_id_quxian = right(mid(right(parent.ddlb_quxian.text,8),2,6),2)
end if
ls_addrid = ls_id_sheng + ls_id_shi + ls_id_quxian

if left(ls_addrid,2) = '00' then
	messagebox("ÌáÊ¾","ÇëÕýÈ·Ñ¡ÔñµØÇøÂë!")
	return
end if
int i
choose case gi_modimark
	case 3 
		if messagebox("ÏµÍ³ÌáÊ¾","È·ÈÏÊÇ·ñÉ¾³ý£¿",Exclamation!,YesNo!,2)=1 then
			delete from a_bmcode where bmid = :gs_keyno;
			delete from a_bmmx where bmid = :gs_keyno;
		end if
	case 2 
		//        if mlid = '' then
		//		     messagebox('ÏµÍ³ÌáÊ¾','Àà±ð±àºÅ²»ÄÜÎª¿Õ£¡')
		//			  return
		//		  end if
		if mldh = '' then
			messagebox('ÏµÍ³ÌáÊ¾','²¿ÃÅ±àºÅ²»ÄÜÎª¿Õ£¡')
			return
		end if
		if mlmc = '' then
			messagebox('ÏµÍ³ÌáÊ¾','²¿ÃÅÃû³Æ²»ÄÜÎª¿Õ£¡')
			return
		end if
		if dqjm = '' then
			messagebox('ÏµÍ³ÌáÊ¾','µØÇø¼òÂë²»ÄÜÎª¿Õ£¡')	
			return
		else
			select count(*)
			into :i
			from a_bmcode
			where addrbg like :dqjm and addrid <> :ls_addrid;
			if i = 0 then
			else
				messagebox('ÏµÍ³ÌáÊ¾','µØÇø¼òÂëÒÑ¾­´æÔÚ,ÇëÖØÐÂÌîÐ´£¡')
				return
			end if
		end if
		if bmhs <> "" and not isnull(bmhs) then
			select count(*) into :currnum from a_bmcode where bmid <> :mldh and bmhs = :bmhs ;
			if currnum=1  then
				messagebox('ÏµÍ³ÌáÊ¾','²¿ÃÅºËËãºÅ²»ÄÜÖØ¸´ ')
				return
			end if
		end if
		
		update a_bmcode set bmid=:mldh,bmmc=:mlmc,bmhs = :bmhs,addrid = :ls_addrid,addrbg = :dqjm
		where bmid=:gs_keyno;
		update a_bmcode set addrbg like :sle_dqjm.text
		where addrid like :ls_addrid;
		update a_bmmx set bmid=:mldh,bmhs = :bmhs
		where bmid=:gs_keyno;
		
   case 1 
		//        if mlid = '' then
		//		     messagebox('ÏµÍ³ÌáÊ¾','Àà±ð±àºÅ²»ÄÜÎª¿Õ£¡')
		//			  return
		//		  end if
		if mldh = '' then
			messagebox('ÏµÍ³ÌáÊ¾','²¿ÃÅ±àºÅ²»ÄÜÎª¿Õ£¡')
			return
		end if
		if mlmc = '' then
			messagebox('ÏµÍ³ÌáÊ¾','²¿ÃÅÃû³Æ²»ÄÜÎª¿Õ£¡')
			return
		end if
		if bmhs <> "" and not isnull(bmhs) then
			select count(*) into :currnum from a_bmcode where bmid <> :mldh and bmhs = :bmhs ;
			if currnum=1  then
				messagebox('ÏµÍ³ÌáÊ¾','²¿ÃÅºËËãºÅ²»ÄÜÖØ¸´ ')
				return
			end if
		end if
		if dqjm = '' then
			messagebox('ÏµÍ³ÌáÊ¾','µØÇø¼òÂë²»ÄÜÎª¿Õ£¡')
			return
		end if
		if sle_dqjm.enabled = false then
		else
			select count(*)
			into :i
			from a_bmcode
			where addrbg like :dqjm;
			if i = 0 then
			else
				messagebox('ÏµÍ³ÌáÊ¾','µØÇø¼òÂëÒÑ¾­´æÔÚ,ÇëÖØÐÂÌîÐ´£¡')
				return
			end if
		end if
		select count(*) into :currnum from a_bmcode where bmid = :mldh ;
		if currnum = 1  then
			messagebox('ÏµÍ³ÌáÊ¾','²¿ÃÅ±àºÅ²»ÄÜÖØ¸´ ')
			return
		end if
		
		insert into a_bmcode (bmid,bmmc,bmhs,addrid,addrbg) values (:mldh,:mlmc,:bmhs,:ls_addrid,:dqjm);
		
end choose		  
if okmark = 0 then
   commit;
   retrieve(dw_1)		
else
	rollback;
	messagebox('ÏµÍ³ÌáÊ¾','¶Ô²»Æð£¡´Ë´ÎÐÞ¸ÄµÄÊý¾ÝÎ´ÄÜ¸üÐÂ£¡')
end if

cb_ok.visible = false
cb_ok.enabled = false
cb_cancel.visible = false
cb_cancel.enabled = false

cb_exit.visible = true
cb_exit.enabled = true
cb_dele.visible = true
cb_dele.enabled = true
cb_edit.visible = true
cb_edit.enabled = true
cb_add.visible = true
cb_add.enabled = true

sle_mlid.text = ''
sle_mldh.text = ''
sle_mlmc.text = ''
sle_bmhs.text = ''
sle_dqjm.text = ''

sle_mlid.enabled = false
sle_mldh.enabled = false
sle_mlmc.enabled = false
sle_bmhs.enabled = false
sle_dqjm.enabled = false

ddlb_sheng.enabled = false
ddlb_shi.enabled = false
ddlb_quxian.enabled = false

dw_1.enabled = true
gs_keyno = ''
end event

type st_space from statictext within win_xtgl_bm
integer x = 357
integer y = 72
integer width = 2880
integer height = 304
integer textsize = -28
integer weight = 700
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "·ÂËÎ_GB2312"
long textcolor = 128
long backcolor = 16777215
boolean enabled = false
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type cb_dele from commandbutton within win_xtgl_bm
integer x = 1925
integer y = 1784
integer width = 343
integer height = 128
integer taborder = 80
boolean bringtotop = true
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "É¾³ý"
end type

event clicked;if dw_1.rowcount() <= 0 then
   return
end if	

integer currno

if isnull(gs_keyno) or trim(gs_keyno) = '' then
   messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÉ¾³ýµÄ²¿ÃÅ£¡')	
	return
end if	

dw_1.enabled = false

string ls_addrid
select bmid,bmmc,bmhs,addrid
into   :sle_mldh.text,:sle_mlmc.text,:sle_bmhs.text,:ls_addrid
from   a_bmcode
where  bmid = :gs_keyno;

string ls_sheng,ls_shi,ls_quxian
if right(ls_addrid,4) = '0000' then
	ls_sheng = ls_addrid
	ls_shi = '000000'
	ls_quxian = '000000'
else
	if right(ls_addrid,2) = '00' then
		ls_sheng = left(ls_addrid,2) + '0000'
		ls_shi = ls_addrid
		ls_quxian = '000000'
	else
		ls_sheng = left(ls_addrid,2) + '0000'
		ls_shi = left(ls_addrid,4) + '00'
		ls_quxian = ls_addrid
	end if
end if

datastore lds_1
lds_1 = create datastore
lds_1.dataobject = 'dat_z_xzdm'
lds_1.settransobject(sqlca)
lds_1.retrieve(ls_sheng)
string ls_mc,ls_id
if lds_1.rowcount() > 0 then
	ls_mc = lds_1.getitemstring(1,'xzmc')
	ls_id = lds_1.getitemstring(1,'xzid')
	parent.ddlb_sheng.text = ls_mc + '(' + ls_id + ')'
end if
lds_1.reset()
lds_1.retrieve(ls_shi)
if lds_1.rowcount() > 0 then
	ls_mc = lds_1.getitemstring(1,'xzmc')
	ls_id = lds_1.getitemstring(1,'xzid')
	parent.ddlb_shi.text = ls_mc + '(' + ls_id + ')'
end if
lds_1.reset()
lds_1.retrieve(ls_quxian)
if lds_1.rowcount() > 0 then
	ls_mc = lds_1.getitemstring(1,'xzmc')
	ls_id = lds_1.getitemstring(1,'xzid')
	parent.ddlb_quxian.text = ls_mc + '(' + ls_id + ')'
end if
destroy lds_1

gi_modimark = 3
sle_mlid.enabled = true
sle_mldh.enabled = true
sle_mlmc.enabled = true
sle_bmhs.enabled = true

ddlb_sheng.enabled = true
ddlb_shi.enabled = true
ddlb_quxian.enabled = true

cb_ok.visible = true
cb_ok.enabled = true
cb_cancel.visible = true
cb_cancel.enabled = true

cb_exit.visible = false
cb_exit.enabled = false
cb_dele.visible = false
cb_dele.enabled = false
cb_edit.visible = false
cb_edit.enabled = false
cb_add.visible = false
cb_add.enabled = false

end event

