$PBExportHeader$win_xtgl_jyjl.srw
$PBExportComments$¼ìÑé½áÂÛ
forward
global type win_xtgl_jyjl from window
end type
type st_13 from statictext within win_xtgl_jyjl
end type
type cbx_1 from checkbox within win_xtgl_jyjl
end type
type ddlb_2 from dropdownlistbox within win_xtgl_jyjl
end type
type st_12 from statictext within win_xtgl_jyjl
end type
type st_11 from statictext within win_xtgl_jyjl
end type
type ddlb_1 from dropdownlistbox within win_xtgl_jyjl
end type
type ddlb_fl from dropdownlistbox within win_xtgl_jyjl
end type
type st_10 from statictext within win_xtgl_jyjl
end type
type st_9 from statictext within win_xtgl_jyjl
end type
type st_8 from statictext within win_xtgl_jyjl
end type
type st_7 from statictext within win_xtgl_jyjl
end type
type st_5 from statictext within win_xtgl_jyjl
end type
type st_6 from statictext within win_xtgl_jyjl
end type
type em_1 from editmask within win_xtgl_jyjl
end type
type rb_1 from radiobutton within win_xtgl_jyjl
end type
type rb_2 from radiobutton within win_xtgl_jyjl
end type
type sle_jyjlid from singlelineedit within win_xtgl_jyjl
end type
type st_4 from statictext within win_xtgl_jyjl
end type
type ddlb_jylb from dropdownlistbox within win_xtgl_jyjl
end type
type st_3 from statictext within win_xtgl_jyjl
end type
type ddlb_jyml from dropdownlistbox within win_xtgl_jyjl
end type
type st_1 from statictext within win_xtgl_jyjl
end type
type st_2 from statictext within win_xtgl_jyjl
end type
type st_title from statictext within win_xtgl_jyjl
end type
type st_xt from statictext within win_xtgl_jyjl
end type
type st_date from statictext within win_xtgl_jyjl
end type
type sle_jyjl from singlelineedit within win_xtgl_jyjl
end type
type sle_mlid from singlelineedit within win_xtgl_jyjl
end type
type dw_1 from datawindow within win_xtgl_jyjl
end type
type cb_exit from commandbutton within win_xtgl_jyjl
end type
type cb_cancel from commandbutton within win_xtgl_jyjl
end type
type cb_add from commandbutton within win_xtgl_jyjl
end type
type cb_edit from commandbutton within win_xtgl_jyjl
end type
type cb_dele from commandbutton within win_xtgl_jyjl
end type
type cb_ok from commandbutton within win_xtgl_jyjl
end type
type st_space from statictext within win_xtgl_jyjl
end type
type gb_2 from groupbox within win_xtgl_jyjl
end type
type gb_1 from groupbox within win_xtgl_jyjl
end type
end forward

global type win_xtgl_jyjl from window
integer x = 9
integer y = 4
integer width = 3653
integer height = 2420
windowtype windowtype = child!
long backcolor = 33552359
st_13 st_13
cbx_1 cbx_1
ddlb_2 ddlb_2
st_12 st_12
st_11 st_11
ddlb_1 ddlb_1
ddlb_fl ddlb_fl
st_10 st_10
st_9 st_9
st_8 st_8
st_7 st_7
st_5 st_5
st_6 st_6
em_1 em_1
rb_1 rb_1
rb_2 rb_2
sle_jyjlid sle_jyjlid
st_4 st_4
ddlb_jylb ddlb_jylb
st_3 st_3
ddlb_jyml ddlb_jyml
st_1 st_1
st_2 st_2
st_title st_title
st_xt st_xt
st_date st_date
sle_jyjl sle_jyjl
sle_mlid sle_mlid
dw_1 dw_1
cb_exit cb_exit
cb_cancel cb_cancel
cb_add cb_add
cb_edit cb_edit
cb_dele cb_dele
cb_ok cb_ok
st_space st_space
gb_2 gb_2
gb_1 gb_1
end type
global win_xtgl_jyjl win_xtgl_jyjl

type variables
string gi_jyjlid
string ls_flid,ls_mkid
end variables

event open;st_xt.text = gs_jydw
st_date.text=string(date(fun_datetime('date')),'yyyyÄêmmÔÂddÈÕ')
st_title.text = "¼ìÑé½áÂÛÎ¬»¤"
string lds_strl,condstr
settransobject(dw_1,sqlca)
lds_strl = dw_1.getsqlselect()
condstr = " and a_jyjl.jylbid = view_bgml_total.jylbid and (view_bgml_total.mark = '' or view_bgml_total.mark is null) order by view_bgml_total.sh,view_bgml_total.lbid"
dw_1.setsqlselect(lds_strl + condstr)
dw_1.retrieve()
sle_jyjlid.enabled = false
sle_jyjl.enabled = false
ddlb_1.enabled = false
ddlb_2.enabled = false
//ddlb_jyml.enabled = false
//ddlb_jylb.enabled = false
ddlb_fl.enabled = false
rb_1.enabled = false
rb_2.enabled = false
em_1.enabled = false

cb_ok.visible = false
cb_cancel.visible = false

string tempstr1,tempstr2
DECLARE temp_jyqb CURSOR FOR
SELECT typename 
FROM view_bgml_total WHERE mark = '' or mark is null ORDER BY sh;
OPEN temp_jyqb;
FETCH temp_jyqb INTO :tempstr1,:tempstr2;
DO WHILE SQLCA.SQLCODE = 0
	ddlb_2.additem(tempstr1 + space(100) + tempstr2)
	FETCH temp_jyqb INTO :tempstr1,:tempstr2;
LOOP
CLOSE temp_jyqb;
long i,fl_num
string ls_sh
for i = 10 to 22
	ls_sh = string(i)
	select count(*) into :fl_num from view_bgml_total where sh = :ls_sh;
	if fl_num = 0 then
	else
		choose case i
			case 10
				ddlb_fl.AddItem('ÈÝÆ÷')
			case 11
				ddlb_fl.AddItem('¹øÂ¯')
			case 12
				ddlb_fl.AddItem('¹ÜµÀ')
			case 13
				ddlb_fl.AddItem('ÆøÆ¿')
			case 14
				ddlb_fl.AddItem('Ë®ÖÊ')	
			case 15
				ddlb_fl.AddItem('°²È«·§')
			case 16
				ddlb_fl.AddItem('ÎÞËðÌ½ÉË')
			case 17
				ddlb_fl.AddItem('µçÌÝ')
			case 18
				ddlb_fl.AddItem('ÆðÖØ»ú')
			case 19
				ddlb_fl.AddItem('³§³µ')
			case 20
				ddlb_fl.AddItem('Ë÷µÀ')	
			case 21
				ddlb_fl.AddItem('ÓÎÀÖÉèÊ©')
			case 22
				ddlb_fl.AddItem('ÆäËü')	
		end choose
	end if
next
setnull(gi_jyjlid)
setnull(gi_jymlid)
setnull(gi_jylbid)

end event

on win_xtgl_jyjl.create
this.st_13=create st_13
this.cbx_1=create cbx_1
this.ddlb_2=create ddlb_2
this.st_12=create st_12
this.st_11=create st_11
this.ddlb_1=create ddlb_1
this.ddlb_fl=create ddlb_fl
this.st_10=create st_10
this.st_9=create st_9
this.st_8=create st_8
this.st_7=create st_7
this.st_5=create st_5
this.st_6=create st_6
this.em_1=create em_1
this.rb_1=create rb_1
this.rb_2=create rb_2
this.sle_jyjlid=create sle_jyjlid
this.st_4=create st_4
this.ddlb_jylb=create ddlb_jylb
this.st_3=create st_3
this.ddlb_jyml=create ddlb_jyml
this.st_1=create st_1
this.st_2=create st_2
this.st_title=create st_title
this.st_xt=create st_xt
this.st_date=create st_date
this.sle_jyjl=create sle_jyjl
this.sle_mlid=create sle_mlid
this.dw_1=create dw_1
this.cb_exit=create cb_exit
this.cb_cancel=create cb_cancel
this.cb_add=create cb_add
this.cb_edit=create cb_edit
this.cb_dele=create cb_dele
this.cb_ok=create cb_ok
this.st_space=create st_space
this.gb_2=create gb_2
this.gb_1=create gb_1
this.Control[]={this.st_13,&
this.cbx_1,&
this.ddlb_2,&
this.st_12,&
this.st_11,&
this.ddlb_1,&
this.ddlb_fl,&
this.st_10,&
this.st_9,&
this.st_8,&
this.st_7,&
this.st_5,&
this.st_6,&
this.em_1,&
this.rb_1,&
this.rb_2,&
this.sle_jyjlid,&
this.st_4,&
this.ddlb_jylb,&
this.st_3,&
this.ddlb_jyml,&
this.st_1,&
this.st_2,&
this.st_title,&
this.st_xt,&
this.st_date,&
this.sle_jyjl,&
this.sle_mlid,&
this.dw_1,&
this.cb_exit,&
this.cb_cancel,&
this.cb_add,&
this.cb_edit,&
this.cb_dele,&
this.cb_ok,&
this.st_space,&
this.gb_2,&
this.gb_1}
end on

on win_xtgl_jyjl.destroy
destroy(this.st_13)
destroy(this.cbx_1)
destroy(this.ddlb_2)
destroy(this.st_12)
destroy(this.st_11)
destroy(this.ddlb_1)
destroy(this.ddlb_fl)
destroy(this.st_10)
destroy(this.st_9)
destroy(this.st_8)
destroy(this.st_7)
destroy(this.st_5)
destroy(this.st_6)
destroy(this.em_1)
destroy(this.rb_1)
destroy(this.rb_2)
destroy(this.sle_jyjlid)
destroy(this.st_4)
destroy(this.ddlb_jylb)
destroy(this.st_3)
destroy(this.ddlb_jyml)
destroy(this.st_1)
destroy(this.st_2)
destroy(this.st_title)
destroy(this.st_xt)
destroy(this.st_date)
destroy(this.sle_jyjl)
destroy(this.sle_mlid)
destroy(this.dw_1)
destroy(this.cb_exit)
destroy(this.cb_cancel)
destroy(this.cb_add)
destroy(this.cb_edit)
destroy(this.cb_dele)
destroy(this.cb_ok)
destroy(this.st_space)
destroy(this.gb_2)
destroy(this.gb_1)
end on

type st_13 from statictext within win_xtgl_jyjl
integer x = 562
integer y = 1888
integer width = 2875
integer height = 68
integer textsize = -9
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
boolean enabled = false
string text = "ËµÃ÷£ºÑ¡ÖÐÉèÖÃÐÂ°æ±¾ÆðÖØ»úÖÜÆÚ¾Í¿É°ÑÑ¡ÖÐµÄÐÂ°æÆðÖØ»ú±¨¸æÖÜÆÚ×Ô¶¯ÉèÖÃºÃ¡£"
alignment alignment = right!
boolean focusrectangle = false
end type

type cbx_1 from checkbox within win_xtgl_jyjl
integer x = 2313
integer y = 1772
integer width = 933
integer height = 64
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
boolean italic = true
long textcolor = 128
long backcolor = 33552359
string text = "ÉèÖÃÐÂ°æ±¾ÆðÖØ»úÖÜÆÚ"
end type

event clicked;open(win_glc_tzsb_insert_select_jyzq)
string jyjlmark
select jyjlmark into :jyjlmark from a_jydw ;
if isnull(jyjlmark) then jyjlmark = ''
if jyjlmark <> '' then
	cbx_1.checked = true
else
	cbx_1.checked = false
end if
end event

type ddlb_2 from dropdownlistbox within win_xtgl_jyjl
integer x = 681
integer y = 1616
integer width = 1545
integer height = 504
integer taborder = 60
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean sorted = false
boolean vscrollbar = true
end type

event selectionchanged;ddlb_jyml.RESET()
ddlb_jylb.RESET()
string typename,temp
string jyml,jylb
temp = trim(right(trim(ddlb_2.text),3))
if temp = '' or isnull(temp) then
else
	gi_jymlid = left(temp,len(temp) - 1)
	gi_jylbid = right(temp,1)
	SELECT mc into :jyml FROM a_jyml_id where id like :gi_jymlid;
	SELECT mc into :jylb FROM a_jylb_id where id = :gi_jylbid;
	ddlb_jyml.text = jyml + space(100) + gi_jymlid
	ddlb_jylb.text = jylb + space(100) + gi_jylbid
end if
end event

type st_12 from statictext within win_xtgl_jyjl
integer x = 293
integer y = 1628
integer width = 379
integer height = 76
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "ÇëÑ¡Ôñ±¨¸æ"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_11 from statictext within win_xtgl_jyjl
integer x = 1280
integer y = 1496
integer width = 379
integer height = 76
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "ÇëÑ¡ÔñÄ£¿é"
alignment alignment = right!
boolean focusrectangle = false
end type

type ddlb_1 from dropdownlistbox within win_xtgl_jyjl
integer x = 1673
integer y = 1484
integer width = 558
integer height = 504
integer taborder = 150
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean sorted = false
boolean vscrollbar = true
end type

event selectionchanged;string ls_fl,ls_mk,condstr,lds_strl
ddlb_2.RESET()
ls_mk = ddlb_1.text
choose case trim(ddlb_fl.text)
	case 'ÈÝÆ÷'
		ls_flid = 'rq'
	case '¹øÂ¯'
		ls_flid = 'gl'
	case '¹ÜµÀ'
		ls_flid = 'gd'
	case 'ÆøÆ¿'
		ls_flid = 'qp'
	case 'Ë®ÖÊ'
		ls_flid = 'sz'
	case '°²È«·§'
		ls_flid = 'aqf'
	case 'ÎÞËð¼ì²â'
		ls_flid = 'wsts'
	case 'µçÌÝ'
		ls_flid = 'dt'
	case 'ÆðÖØ»ú'
		ls_flid = 'qzj'
	case '³§³µ'
		ls_flid = 'cc'
	case 'Ë÷µÀ'
		ls_flid = 'sd'
	case 'ÓÎÀÖÉèÊ©'
		ls_flid = 'yl'
	case 'ÆäËü'
		ls_flid = 'qt'
end choose
choose case ls_mk
	case '¶¨ÆÚ¼ìÑé'
		ls_mkid = 'dj'
	case '°²×°¼à¼ì'
		ls_mkid = 'aj'
	case 'ÖÆÔì¼à¼ì'
		ls_mkid = 'jj'
	case '½ø³ö¿Ú¼ìÑé'
		ls_mkid = 'jk'
	case 'ÆäËü¼ìÑé'
		ls_mkid = 'qj'
	case 'È«²¿'
		ls_mkid = '%'	
end choose
string id,tempstr1,tempstr2
id = ls_flid + '%'
if ls_mk = 'È«²¿' then
	DECLARE temp_jyqb CURSOR FOR
	SELECT typename,jytype 
	FROM a_bgml WHERE lbid like :id and (mark = '' or mark is null) ORDER BY lbid;
	OPEN temp_jyqb;
	FETCH temp_jyqb INTO :tempstr1,:tempstr2;
	DO WHILE SQLCA.SQLCODE = 0
		ddlb_2.additem(tempstr1 + space(100) + tempstr2)
		FETCH temp_jyqb INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jyqb;
else
	DECLARE temp_jy CURSOR FOR
	SELECT typename,jytype  
	FROM a_bgml WHERE lbid like :id and jymk like :ls_mkid and (mark = '' or mark is null) ORDER BY lbid;
	OPEN temp_jy;
	FETCH temp_jy INTO :tempstr1,:tempstr2;
	DO WHILE SQLCA.SQLCODE = 0
		ddlb_2.additem(tempstr1 + space(100) + tempstr2)
		FETCH temp_jy INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jy;
end if
end event

type ddlb_fl from dropdownlistbox within win_xtgl_jyjl
integer x = 681
integer y = 1484
integer width = 553
integer height = 504
integer taborder = 140
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean sorted = false
boolean vscrollbar = true
end type

event selectionchanged;string ls_fl,ls_NowJyml,ls_sh
ls_fl = ddlb_fl.text
ddlb_1.RESET()
ddlb_2.RESET()
choose case ls_fl
	case 'ÈÝÆ÷'
		ls_flid = 'rq'
		ls_sh = '10'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case '¹øÂ¯'
		ls_flid = 'gl'
		ls_sh = '11'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case '¹ÜµÀ'
		ls_flid = 'gd'
		ls_sh = '12'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case 'ÆøÆ¿'
		ls_flid = 'qp'
		ls_sh = '13'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case 'Ë®ÖÊ'
		ls_flid = 'sz'
		ls_sh = '14'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case '°²È«·§'
		ls_flid = 'aqf'
		ls_sh = '15'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case 'ÎÞËð¼ì²â'
		ls_flid = 'wsts'
		ls_sh = '16'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case 'µçÌÝ'
		ls_flid = 'dt'
		ls_sh = '17'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case 'ÆðÖØ»ú'
		ls_flid = 'qzj'
		ls_sh = '18'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case '³§³µ'
		ls_flid = 'cc'
		ls_sh = '19'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case 'Ë÷µÀ'
		ls_flid = 'sd'
		ls_sh = '20'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case 'ÓÎÀÖÉèÊ©'
		ls_flid = 'yl'
		ls_sh = '21'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
	case 'ÆäËü'
		ls_flid = 'qt'
		ls_sh = '22'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)	
end choose
///////////////////////
long fl_num
select count(*) into :fl_num from view_bgml_total where sh like :ls_sh and jymk = 'dj';
if fl_num <> 0 then
	ls_NowJyml = '¶¨ÆÚ¼ìÑé'
	ddlb_1.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :ls_sh and jymk = 'aj';
if fl_num <> 0 then
	ls_NowJyml = '°²×°¼à¼ì'
	ddlb_1.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :ls_sh and jymk = 'jj';
if fl_num <> 0 then
	ls_NowJyml = 'ÖÆÔì¼à¼ì'
	ddlb_1.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :ls_sh and jymk = 'jk';
if fl_num <> 0 then
	ls_NowJyml = '½ø³ö¿Ú¼ìÑé'
	ddlb_1.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :ls_sh and jymk = 'qj';
if fl_num <> 0 then
	ls_NowJyml = 'ÆäËü¼ìÑé'
	ddlb_1.AddItem(ls_NowJyml)
	fl_num = 0
end if

string id,tempstr1,tempstr2
id = ls_flid + '%'
if ls_fl = 'È«²¿' then
	DECLARE temp_jyqb CURSOR FOR
	SELECT typename,jytype 
	FROM a_bgml WHERE mark = '' or mark is null ORDER BY lbid;
	OPEN temp_jyqb;
	FETCH temp_jyqb INTO :tempstr1,:tempstr2;
	DO WHILE SQLCA.SQLCODE = 0
		ddlb_2.additem(tempstr1 + space(100) + tempstr2)
		FETCH temp_jyqb INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jyqb;
else
	DECLARE temp_jy CURSOR FOR
	SELECT typename,jytype  
	FROM a_bgml WHERE lbid like :id and (mark = '' or mark is null) ORDER BY lbid;
	OPEN temp_jy;
	FETCH temp_jy INTO :tempstr1,:tempstr2;
	DO WHILE SQLCA.SQLCODE = 0
		ddlb_2.additem(tempstr1 + space(100) + tempstr2)
		FETCH temp_jy INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jy;
end if
end event

type st_10 from statictext within win_xtgl_jyjl
integer x = 293
integer y = 1496
integer width = 379
integer height = 76
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "ÇëÑ¡Ôñ·ÖÀà"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_9 from statictext within win_xtgl_jyjl
integer x = 2688
integer y = 1668
integer width = 686
integer height = 76
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
boolean underline = true
long textcolor = 128
long backcolor = 33552359
boolean enabled = false
string text = "Y±íÊ¾²»½øÐÐ"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_8 from statictext within win_xtgl_jyjl
integer x = 2647
integer y = 1552
integer width = 334
integer height = 76
integer textsize = -11
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
boolean enabled = false
string text = "¼ìÑéÖÜÆÚ"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_7 from statictext within win_xtgl_jyjl
integer x = 2309
integer y = 1456
integer width = 562
integer height = 76
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "ÊÇ·ñ½øÐÐÏÂ´Î¼ìÑé"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_5 from statictext within win_xtgl_jyjl
integer x = 3154
integer y = 1948
integer width = 247
integer height = 76
integer textsize = -11
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
boolean enabled = false
alignment alignment = right!
boolean focusrectangle = false
end type

type st_6 from statictext within win_xtgl_jyjl
integer x = 3305
integer y = 1552
integer width = 101
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
boolean enabled = false
string text = "ÔÂ"
boolean focusrectangle = false
end type

type em_1 from editmask within win_xtgl_jyjl
integer x = 3003
integer y = 1540
integer width = 283
integer height = 96
integer taborder = 70
integer textsize = -11
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "##"
boolean spin = true
string displaydata = ""
double increment = 1
string minmax = "0~~100"
end type

type rb_1 from radiobutton within win_xtgl_jyjl
integer x = 2309
integer y = 1552
integer width = 375
integer height = 76
integer taborder = 60
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
string text = "½øÐÐ"
end type

event clicked;if this.checked = true then
	em_1.enabled = true
else
	em_1.enabled = false
end if
end event

type rb_2 from radiobutton within win_xtgl_jyjl
integer x = 2309
integer y = 1668
integer width = 338
integer height = 76
integer taborder = 80
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
string text = "²»½øÐÐ"
end type

type sle_jyjlid from singlelineedit within win_xtgl_jyjl
integer x = 677
integer y = 1740
integer width = 521
integer height = 104
integer taborder = 20
integer textsize = -11
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type st_4 from statictext within win_xtgl_jyjl
integer x = 293
integer y = 1760
integer width = 379
integer height = 76
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "½áÂÛ±àºÅ"
alignment alignment = right!
boolean focusrectangle = false
end type

type ddlb_jylb from dropdownlistbox within win_xtgl_jyjl
boolean visible = false
integer x = 1838
integer y = 1784
integer width = 608
integer height = 504
integer taborder = 50
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean sorted = false
boolean vscrollbar = true
end type

type st_3 from statictext within win_xtgl_jyjl
boolean visible = false
integer x = 1522
integer y = 1800
integer width = 320
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
boolean enabled = false
string text = "¼ìÑéÀà±ð"
boolean focusrectangle = false
end type

type ddlb_jyml from dropdownlistbox within win_xtgl_jyjl
boolean visible = false
integer x = 750
integer y = 1784
integer width = 754
integer height = 504
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean sorted = false
boolean vscrollbar = true
end type

type st_1 from statictext within win_xtgl_jyjl
boolean visible = false
integer x = 443
integer y = 1800
integer width = 320
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
boolean enabled = false
string text = "Éè±¸Àà±ð"
boolean focusrectangle = false
end type

type st_2 from statictext within win_xtgl_jyjl
integer x = 1280
integer y = 1760
integer width = 379
integer height = 76
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "½áÂÛÃû³Æ"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_title from statictext within win_xtgl_jyjl
integer x = 489
integer y = 132
integer width = 1266
integer height = 168
integer textsize = -26
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 255
long backcolor = 16777215
boolean enabled = false
string text = "¼ìÑé½áÂÛÎ¬»¤"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_xt from statictext within win_xtgl_jyjl
integer x = 2171
integer y = 132
integer width = 1189
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean enabled = false
string text = "ÆóÒµÖÇÄÜ»¯¹ÜÀíÏµÍ³"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_date from statictext within win_xtgl_jyjl
integer x = 2171
integer y = 232
integer width = 1189
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean enabled = false
string text = "1999Äê1ÔÂ20ÈÕ"
alignment alignment = center!
boolean focusrectangle = false
end type

type sle_jyjl from singlelineedit within win_xtgl_jyjl
integer x = 1691
integer y = 1740
integer width = 521
integer height = 104
integer taborder = 30
integer textsize = -11
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type sle_mlid from singlelineedit within win_xtgl_jyjl
boolean visible = false
integer x = 370
integer y = 1364
integer width = 512
integer height = 104
integer taborder = 90
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within win_xtgl_jyjl
integer x = 283
integer y = 384
integer width = 3131
integer height = 1032
integer taborder = 10
string dataobject = "dw_xtgl_jyjl"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;if right(dwo.name,2) = '_t' then 
	fun_sort(this,dwo.name)
	selectrow(0,false)
	setnull(gi_jyjlid)
	setnull(gi_jymlid)
	setnull(gi_jylbid)
	return
end if

if row > 0 then
   selectrow(0,false)
	selectrow(row,true)
	gi_jyjlid = getitemstring(row,'jyjlid')
	gi_jymlid = getitemstring(row,'jymlid')
	gi_jylbid = getitemstring(row,'jylbid')
else
	setnull(gi_jyjlid)
	setnull(gi_jymlid)
	setnull(gi_jylbid)
end if

end event

type cb_exit from commandbutton within win_xtgl_jyjl
event clicked pbm_bnclicked
integer x = 2441
integer y = 1972
integer width = 370
integer height = 100
integer taborder = 130
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË³ö"
boolean cancel = true
end type

event clicked;setnull(gi_jyjlid)
setnull(gi_jymlid)
setnull(gi_jylbid)
close(win_xtgl_jyjl)
end event

type cb_cancel from commandbutton within win_xtgl_jyjl
integer x = 2107
integer y = 1972
integer width = 370
integer height = 100
integer taborder = 150
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
boolean enabled = false
string text = "·ÅÆú"
boolean cancel = true
end type

event clicked;dw_1.enabled = true

sle_jyjlid.text = ''
sle_jyjl.text = ''
sle_jyjlid.enabled = false
sle_jyjl.enabled = false
ddlb_1.enabled = false
ddlb_1.selectitem(0)
ddlb_2.selectitem(0)
ddlb_2.enabled = false
ddlb_jyml.enabled = false
ddlb_jyml.selectitem(0)
ddlb_jylb.selectitem(0)
ddlb_jylb.enabled = false
ddlb_fl.selectitem(0)
ddlb_fl.enabled = false
rb_1.enabled = false
rb_2.enabled = false
em_1.enabled = false
rb_1.checked  = false
rb_2.checked = false
em_1.text = ''

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

setnull(gi_jyjlid)
setnull(gi_jymlid)
setnull(gi_jylbid)

end event

type cb_add from commandbutton within win_xtgl_jyjl
integer x = 891
integer y = 1972
integer width = 370
integer height = 100
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "Ôö¼Ó"
boolean default = true
end type

event clicked;long  dwlastno

//select max(jyjlid) into :dwlastno from a_jyjl  ;
//if sqlca.sqlcode = 0  then
//   if isnull(dwlastno) then
//	   sle_mlid.text = '1'
//   else
//	   sle_mlid.text = string(long(dwlastno)+1)
//   end if
//else
//	sle_mlid.text = '1'
//end if
//

dw_1.enabled = false
gi_modimark = 1
sle_jyjlid.enabled = true
sle_jyjl.enabled = true
ddlb_1.enabled = true
ddlb_2.enabled = true
//ddlb_jyml.enabled = true
//ddlb_jylb.enabled = true
ddlb_fl.enabled = true
rb_1.enabled = true
rb_2.enabled = true

rb_1.checked = false
rb_2.checked = false
em_1.enabled = false
em_1.text = ''
//
sle_jyjl.text = ''
ddlb_1.text = ''
ddlb_2.text = ''
//ddlb_jyml.text = ''
//ddlb_jylb.text = ''
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

end event

type cb_edit from commandbutton within win_xtgl_jyjl
integer x = 1408
integer y = 1972
integer width = 370
integer height = 100
integer taborder = 110
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÐÞ¸Ä"
end type

event clicked;if dw_1.rowcount() <= 0 then
   return
end if	

integer currno
string jyml,jylb,jyjl
string mark
int montha
string typename,lbid,jytype,jymk
string ls_NowJyml
if isnull(gi_jyjlid) or trim(gi_jyjlid) = '' then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÐÞ¸ÄµÄ¼ìÑé½áÂÛ£¡')	
	return
end if	

dw_1.enabled = false

select jyml,jylb,jyjl,mark,montha
into   :jyml,:jylb,:jyjl,:mark,:montha
from   a_jyjl
where  jyjlid = :gi_jyjlid and jymlid like :gi_jymlid and jylbid = :gi_jylbid;

select typename,lbid,jytype,jymk
into   :typename,:lbid,:jytype,:jymk
from   view_bgml_total
where  jymlid like :gi_jymlid and jylbid = :gi_jylbid;

choose case left(lbid,len(lbid)-4)
	case 'rq'
		ddlb_fl.text = 'ÈÝÆ÷'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÖÆÔì'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '½ø³ö¿Ú'
		ddlb_1.AddItem(ls_NowJyml)
	case 'gl'
		ddlb_fl.text = '¹øÂ¯'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÖÆÔì'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '½ø³ö¿Ú'
		ddlb_1.AddItem(ls_NowJyml)
	case 'gd'
		ddlb_fl.text = '¹ÜµÀ'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÖÆÔì'
		ddlb_1.AddItem(ls_NowJyml)
	case 'qp'
		ddlb_fl.text = 'ÆøÆ¿'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÖÆÔì'
		ddlb_1.AddItem(ls_NowJyml)
	case 'sz'
		ddlb_fl.text = 'Ë®ÖÊ'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÆäËü'
		ddlb_1.AddItem(ls_NowJyml)
	case 'aqf'
		ddlb_fl.text = '°²È«·§'	
		ls_NowJyml = 'ÆäËü'
		ddlb_1.AddItem(ls_NowJyml)
	case 'wsts'
		ddlb_fl.text = 'ÎÞËðÌ½ÉË'
		ls_NowJyml = 'ÆäËü'
		ddlb_1.AddItem(ls_NowJyml)
	case 'dt'
		ddlb_fl.text = 'µçÌÝ'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÆäËü'
		ddlb_1.AddItem(ls_NowJyml)
	case 'qzj'
		ddlb_fl.text = 'ÆðÖØ»ú'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÖÆÔì'
		ddlb_1.AddItem(ls_NowJyml)
	case 'cc'
		ddlb_fl.text = '³§³µ'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
	case 'sd'
		ddlb_fl.text = 'Ë÷µÀ'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
	case 'cc'
		ddlb_fl.text = 'ÓÎÀÖÉèÊ©'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
end choose
choose case jymk
	case 'dj'
		ddlb_1.text = '¶¨ÆÚ'
	case 'aj'
		ddlb_1.text = '°²×°'
	case 'jj'
		ddlb_1.text = 'ÖÆÔì'
	case 'jk'
		ddlb_1.text = '½ø³ö¿Ú'
	case 'qj'
		ddlb_1.text = 'ÆäËü'	
end choose

string id,tempstr1,tempstr2
id = left(lbid,len(lbid)-4) + '%'
DECLARE temp_jy CURSOR FOR
SELECT typename,jytype  
FROM a_bgml WHERE lbid like :id and jymk like :jymk and (mark = '' or mark is null) ORDER BY lbid;
OPEN temp_jy;
FETCH temp_jy INTO :tempstr1,:tempstr2;
DO WHILE SQLCA.SQLCODE = 0
	ddlb_2.additem(tempstr1 + space(100) + tempstr2)
	FETCH temp_jy INTO :tempstr1,:tempstr2;
LOOP
CLOSE temp_jy;

ddlb_2.text = typename + space(100) + jytype

ddlb_jyml.text = jyml + space(100) + gi_jymlid
ddlb_jylb.text = jylb + space(100) + gi_jylbid
sle_jyjlid.text = gi_jyjlid
sle_jyjl.text = jyjl
//
if mark = 'Y' then
	rb_1.checked = false
	rb_2.checked = true
	em_1.enabled = false
	em_1.text = ''
end if
if mark = 'N' then
	rb_1.checked = true
	rb_2.checked = false
	em_1.enabled = true
	em_1.text = string(montha)
end if
//
gi_modimark = 2
sle_jyjlid.enabled = true
sle_jyjl.enabled = true
ddlb_fl.enabled = true
ddlb_1.enabled = true
ddlb_2.enabled = true
//ddlb_jyml.enabled = true
//ddlb_jylb.enabled = true
rb_1.enabled = true
rb_2.enabled = true

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

type cb_dele from commandbutton within win_xtgl_jyjl
integer x = 1925
integer y = 1972
integer width = 370
integer height = 100
integer taborder = 120
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "É¾³ý"
end type

event clicked;if dw_1.rowcount() <= 0 then
   return
end if	

integer currno
string jyml,jylb,jyjl
string mark
int montha
string typename,lbid,jytype,jymk
string ls_NowJyml
if isnull(gi_jyjlid) or trim(gi_jyjlid) = '' then
   messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÉ¾³ýµÄ¼ìÑé½áÂÛ£¡')	
	return
end if	
dw_1.enabled = false
///////////////////////////////////////////////////////////
select jyml,jylb,jyjl,mark,montha
into   :jyml,:jylb,:jyjl,:mark,:montha
from   a_jyjl
where  jyjlid = :gi_jyjlid and jymlid like :gi_jymlid and jylbid = :gi_jylbid;

select typename,lbid,jytype,jymk
into   :typename,:lbid,:jytype,:jymk
from   view_bgml_total
where  jymlid like :gi_jymlid and jylbid = :gi_jylbid;

choose case left(lbid,len(lbid)-4)
	case 'rq'
		ddlb_fl.text = 'ÈÝÆ÷'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÖÆÔì'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '½ø³ö¿Ú'
		ddlb_1.AddItem(ls_NowJyml)
	case 'gl'
		ddlb_fl.text = '¹øÂ¯'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÖÆÔì'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '½ø³ö¿Ú'
		ddlb_1.AddItem(ls_NowJyml)
	case 'gd'
		ddlb_fl.text = '¹ÜµÀ'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÖÆÔì'
		ddlb_1.AddItem(ls_NowJyml)
	case 'qp'
		ddlb_fl.text = 'ÆøÆ¿'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÖÆÔì'
		ddlb_1.AddItem(ls_NowJyml)
	case 'sz'
		ddlb_fl.text = 'Ë®ÖÊ'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÆäËü'
		ddlb_1.AddItem(ls_NowJyml)
	case 'aqf'
		ddlb_fl.text = '°²È«·§'	
		ls_NowJyml = 'ÆäËü'
		ddlb_1.AddItem(ls_NowJyml)
	case 'wsts'
		ddlb_fl.text = 'ÎÞËðÌ½ÉË'
		ls_NowJyml = 'ÆäËü'
		ddlb_1.AddItem(ls_NowJyml)
	case 'dt'
		ddlb_fl.text = 'µçÌÝ'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÆäËü'
		ddlb_1.AddItem(ls_NowJyml)
	case 'qzj'
		ddlb_fl.text = 'ÆðÖØ»ú'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = 'ÖÆÔì'
		ddlb_1.AddItem(ls_NowJyml)
	case 'cc'
		ddlb_fl.text = '³§³µ'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
	case 'sd'
		ddlb_fl.text = 'Ë÷µÀ'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
	case 'cc'
		ddlb_fl.text = 'ÓÎÀÖÉèÊ©'
		ls_NowJyml = '¶¨ÆÚ'
		ddlb_1.AddItem(ls_NowJyml)
		ls_NowJyml = '°²×°'
		ddlb_1.AddItem(ls_NowJyml)
end choose
choose case jymk
	case 'dj'
		ddlb_1.text = '¶¨ÆÚ'
	case 'aj'
		ddlb_1.text = '°²×°'
	case 'jj'
		ddlb_1.text = 'ÖÆÔì'
	case 'jk'
		ddlb_1.text = '½ø³ö¿Ú'
	case 'qj'
		ddlb_1.text = 'ÆäËü'	
end choose

string id,tempstr1,tempstr2
id = left(lbid,len(lbid)-4) + '%'
DECLARE temp_jy CURSOR FOR
SELECT typename,jytype  
FROM a_bgml WHERE lbid like :id and jymk like :jymk and (mark = '' or mark is null) ORDER BY lbid;
OPEN temp_jy;
FETCH temp_jy INTO :tempstr1,:tempstr2;
DO WHILE SQLCA.SQLCODE = 0
	ddlb_2.additem(tempstr1 + space(100) + tempstr2)
	FETCH temp_jy INTO :tempstr1,:tempstr2;
LOOP
CLOSE temp_jy;

ddlb_2.text = typename + space(100) + jytype
ddlb_jyml.text = jyml + space(100) + gi_jymlid
ddlb_jylb.text = jylb + space(100) + gi_jylbid
sle_jyjlid.text = gi_jyjlid
sle_jyjl.text = jyjl
//
if mark = 'Y' then
	rb_1.checked = false
	rb_2.checked = true
	em_1.enabled = false
	em_1.text = ''
end if
if mark = 'N' then
	rb_1.checked = true
	rb_2.checked = false
	em_1.enabled = true
	em_1.text = string(montha)
end if

gi_modimark = 3
sle_jyjlid.enabled = true
sle_jyjl.enabled = true
ddlb_fl.enabled = true
ddlb_1.enabled = true
ddlb_2.enabled = true
//ddlb_jyml.enabled = true
//ddlb_jylb.enabled = true
rb_1.enabled = true
rb_2.enabled = true

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

type cb_ok from commandbutton within win_xtgl_jyjl
integer x = 1147
integer y = 1972
integer width = 370
integer height = 100
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
boolean enabled = false
string text = "È·ÈÏ"
boolean default = true
end type

event clicked;string jyjlid,jyjl,jymlid,jyml,jylbid,jylb
integer currnum,okmark,leadnum
string mark
string montha
int montha_int
okmark = 0
string typename
jyjlid = trim(sle_jyjlid.text)
jyjl = trim(sle_jyjl.text)
typename = trim(ddlb_2.text)
jymlid = trim(right(trim(ddlb_jyml.text),2))
jyml = trim(left(trim(ddlb_jyml.text),80))
jylbid = right(trim(ddlb_jylb.text),1)
jylb = trim(left(trim(ddlb_jylb.text),80))
if rb_2.checked = true then 
	mark = "Y"
	montha = ""
	setnull(montha_int)
end if
if rb_1.checked = true then
	mark = "N"
   montha = em_1.text
	montha_int = long(montha)
end if

choose case gi_modimark
	case 3 
        if messagebox("ÏµÍ³ÌáÊ¾","È·ÈÏÊÇ·ñÉ¾³ý£¿",Exclamation!,YesNo!,2)=1 then
           delete from a_jyjl 
			  where jyjlid = :gi_jyjlid and jymlid = :gi_jymlid and jylbid = :gi_jylbid ;
        end if
   case 2 
        if jyjlid = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑé½áÂÛ±àºÅ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
          if jyjl = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑé½áÂÛ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		    if typename = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','±¨¸æÃû³Æ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		  if jyml = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Éè±¸Àà±ðÃû³Æ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
        if jylb = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑéÀà±ð²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		  if mark = "" or isnull(mark) then
			  messagebox('ÏµÍ³ÌáÊ¾','ÊÇ·ñ½øÐÐÏÂ´Î¼ìÑé±ØÐèÑ¡Ôñ£¡')
			  return
		  else
			  if (mark = "N" ) and (montha = "" or isnull(montha))  then
				  messagebox('ÏµÍ³ÌáÊ¾','¼ìÑéÖÜÆÚ²»ÕýÈ·£¡')
			     return
		     end if
		  end if
		  
		    UPDATE a_jyjl  
     SET jymlid = :jymlid,   
         jyml = :jyml,   
         jylbid = :jylbid,   
         jylb = :jylb,   
         jyjlid = :jyjlid,   
         jyjl = :jyjl,
			mark = :mark,
			montha = :montha_int
   WHERE ( a_jyjl.jymlid like :gi_jymlid ) AND  
         ( a_jyjl.jylbid like :gi_jylbid ) AND  
         ( a_jyjl.jyjlid like :gi_jyjlid )   ;
   case 1 
        if jyjlid = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑé½áÂÛ±àºÅ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
          if jyjl = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑé½áÂÛ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		   if typename = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','±¨¸æÃû³Æ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		  if jyml = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Éè±¸Àà±ðÃû³Æ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
        if jylb = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑéÀà±ð²»ÄÜÎª¿Õ£¡')
			  return
		  end if
  	     if mark = "" or isnull(mark) then
			  messagebox('ÏµÍ³ÌáÊ¾','ÊÇ·ñ½øÐÐÏÂ´Î¼ìÑé±ØÐèÑ¡Ôñ£¡')
			  return
		  else
			  if (mark = "N" )  and (montha = "" or isnull(montha))  then
				  messagebox('ÏµÍ³ÌáÊ¾','¼ìÑéÖÜÆÚ²»ÕýÈ·£¡')
			     return
		     end if
		  end if
		  
			 select count(*) into :currnum from a_jyjl where jyjlid = :jyjlid  &
			                 and jymlid = :jymlid and jylbid = :jylbid ;
	        if currnum=1  then
		      messagebox('ÏµÍ³ÌáÊ¾','¸Ã¼ìÑé½áÂÛÒÑ´æÔÚ£¡')
	        return
           end if
	 
		  insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
		  values (:jyjlid,:jyjl,:jymlid,:jyml,:jylbid,:jylb,:mark,:montha_int);
	
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

sle_jyjlid.text = ''
sle_jyjl.text = ''
sle_jyjlid.enabled = false
sle_jyjl.enabled = false
ddlb_fl.enabled = false
ddlb_fl.selectitem(0)
ddlb_1.enabled = false
ddlb_jyml.enabled = false
ddlb_1.selectitem(0)
ddlb_2.selectitem(0)
ddlb_jyml.selectitem(0)
ddlb_jylb.selectitem(0)
ddlb_jylb.enabled = false
ddlb_2.enabled = false
rb_1.enabled = false
rb_2.enabled = false
em_1.enabled = false
rb_1.checked  = false
rb_2.checked = false
em_1.text = ''

dw_1.enabled = true
gs_keyno = ''

setnull(gi_jyjlid)
setnull(gi_jymlid)
setnull(gi_jylbid)
end event

type st_space from statictext within win_xtgl_jyjl
integer x = 283
integer y = 72
integer width = 3131
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

type gb_2 from groupbox within win_xtgl_jyjl
integer x = 279
integer y = 1400
integer width = 2002
integer height = 476
integer taborder = 170
integer textsize = -11
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
end type

type gb_1 from groupbox within win_xtgl_jyjl
integer x = 2281
integer y = 1400
integer width = 1147
integer height = 476
integer taborder = 160
integer textsize = -11
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
end type

