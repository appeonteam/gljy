$PBExportHeader$win_zdsh_gcsd.srw
$PBExportComments$¼ìÑé½áÂÛ
forward
global type win_zdsh_gcsd from window
end type
type cb_edit from commandbutton within win_zdsh_gcsd
end type
type dw_1 from datawindow within win_zdsh_gcsd
end type
type ddlb_bgzl from dropdownlistbox within win_zdsh_gcsd
end type
type st_12 from statictext within win_zdsh_gcsd
end type
type st_11 from statictext within win_zdsh_gcsd
end type
type ddlb_bg from dropdownlistbox within win_zdsh_gcsd
end type
type ddlb_fl from dropdownlistbox within win_zdsh_gcsd
end type
type st_10 from statictext within win_zdsh_gcsd
end type
type sle_mlid from singlelineedit within win_zdsh_gcsd
end type
type cb_exit from commandbutton within win_zdsh_gcsd
end type
type cb_dele from commandbutton within win_zdsh_gcsd
end type
type cb_add from commandbutton within win_zdsh_gcsd
end type
type gb_2 from groupbox within win_zdsh_gcsd
end type
end forward

global type win_zdsh_gcsd from window
integer x = 9
integer y = 4
integer width = 2651
integer height = 2284
boolean titlebar = true
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 33552359
boolean center = true
cb_edit cb_edit
dw_1 dw_1
ddlb_bgzl ddlb_bgzl
st_12 st_12
st_11 st_11
ddlb_bg ddlb_bg
ddlb_fl ddlb_fl
st_10 st_10
sle_mlid sle_mlid
cb_exit cb_exit
cb_dele cb_dele
cb_add cb_add
gb_2 gb_2
end type
global win_zdsh_gcsd win_zdsh_gcsd

type variables
string Is_ShAdd,Is_ShJytype
int Ii_ShNrid
long Il_CurrentRow

string ls_flid,ls_mkid  
end variables

event open;string ls_NowStr,ls_NowJyml
string tempstr1,tempstr2

long i,fl_num
string ls_sh,ls_jymk,temp_sh
for i = 10 to 22
	ls_sh = string(i)
	select count(*) into :fl_num from view_bgml_total where sh = :ls_sh;
	if fl_num = 0 then
	else
		if temp_sh = '' or isnull(temp_sh) then
			temp_sh = string(i)
		end if
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
				ddlb_fl.AddItem('ÎÞËð¼ì²â')
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
select count(*) into :fl_num from view_bgml_total where sh like :temp_sh and jymk = 'dj';
if fl_num <> 0 then
	if ls_jymk = '' or isnull(ls_jymk) then
		ls_jymk = 'dj'
	end if
	ls_NowJyml = '¶¨ÆÚ¼ìÑé'
	ddlb_bg.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :temp_sh and jymk = 'aj';
if fl_num <> 0 then
	if ls_jymk = '' or isnull(ls_jymk) then
		ls_jymk = 'aj'
	end if
	ls_NowJyml = '°²×°¼à¼ì'
	ddlb_bg.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :temp_sh and jymk = 'jj';
if fl_num <> 0 then
	if ls_jymk = '' or isnull(ls_jymk) then
		ls_jymk = 'jj'
	end if
	ls_NowJyml = 'ÖÆÔì¼à¼ì'
	ddlb_bg.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :temp_sh and jymk = 'jk';
if fl_num <> 0 then
	if ls_jymk = '' or isnull(ls_jymk) then
		ls_jymk = 'jk'
	end if
	ls_NowJyml = '½ø³ö¿Ú¼ìÑé'
	ddlb_bg.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :temp_sh and jymk = 'qj';
if fl_num <> 0 then
	if ls_jymk = '' or isnull(ls_jymk) then
		ls_jymk = 'qj'
	end if
	ls_NowJyml = 'ÆäËü¼ìÑé'
	ddlb_bg.AddItem(ls_NowJyml)
	fl_num = 0
end if
ddlb_fl.SelectItem(1)
ddlb_bg.SelectItem(1)

DECLARE temp_jy CURSOR FOR
SELECT typename,jytype  
FROM view_bgml_total WHERE sh like :temp_sh and jymk like :ls_jymk and (mark = '' or mark is null) ORDER BY lbid;
OPEN temp_jy;
FETCH temp_jy INTO :tempstr1,:tempstr2;
DO WHILE SQLCA.SQLCODE = 0
	ddlb_bgzl.additem(tempstr1 + space(100) + tempstr2)
	FETCH temp_jy INTO :tempstr1,:tempstr2;
LOOP
CLOSE temp_jy;

ddlb_bgzl.SelectItem(1)
dw_1.SetTransObject(sqlca)
Is_ShJytype = ''

if ddlb_bgzl.SelectItem(1) > 0 then
	ls_NowStr = ddlb_bgzl.Text
	ls_NowStr = trim(right(ls_NowStr,3))
	dw_1.Retrieve(ls_NowStr)
	Is_ShJytype = ls_NowStr
end if
Il_CurrentRow = 0

end event

on win_zdsh_gcsd.create
this.cb_edit=create cb_edit
this.dw_1=create dw_1
this.ddlb_bgzl=create ddlb_bgzl
this.st_12=create st_12
this.st_11=create st_11
this.ddlb_bg=create ddlb_bg
this.ddlb_fl=create ddlb_fl
this.st_10=create st_10
this.sle_mlid=create sle_mlid
this.cb_exit=create cb_exit
this.cb_dele=create cb_dele
this.cb_add=create cb_add
this.gb_2=create gb_2
this.Control[]={this.cb_edit,&
this.dw_1,&
this.ddlb_bgzl,&
this.st_12,&
this.st_11,&
this.ddlb_bg,&
this.ddlb_fl,&
this.st_10,&
this.sle_mlid,&
this.cb_exit,&
this.cb_dele,&
this.cb_add,&
this.gb_2}
end on

on win_zdsh_gcsd.destroy
destroy(this.cb_edit)
destroy(this.dw_1)
destroy(this.ddlb_bgzl)
destroy(this.st_12)
destroy(this.st_11)
destroy(this.ddlb_bg)
destroy(this.ddlb_fl)
destroy(this.st_10)
destroy(this.sle_mlid)
destroy(this.cb_exit)
destroy(this.cb_dele)
destroy(this.cb_add)
destroy(this.gb_2)
end on

type cb_edit from commandbutton within win_zdsh_gcsd
integer x = 841
integer y = 424
integer width = 357
integer height = 100
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÐÞ¸Ä"
end type

event clicked;string ls_NowJytype
ls_NowJytype = Is_ShJytype
if isnull(ls_NowJytype) or ls_NowJytype = '' then   
   MessageBox("ÌáÊ¾","±¨¸æÀà±ðÑ¡ÔñÓÐ´íÎó,ÇëÑ¡È¡±¨¸æÀà±ð!")
	return
end if
long ll_NowRow
ll_NowRow = Il_CurrentRow
if ll_NowRow < 1 then   
   MessageBox("ÌáÊ¾","ÇëÊ×ÏÈÑ¡È¡Ä³¸öÉóºË¹ý³Ì½øÐÐÐÞ¸Ä!")
	return
end if

Is_ShAdd = 'EDIT'

int li_NowNrid
li_NowNrid = dw_1.GetItemNumber(ll_NowRow,'id')
Ii_ShNrid = li_NowNrid
open(win_zdsh_shtj)

end event

type dw_1 from datawindow within win_zdsh_gcsd
integer x = 27
integer y = 568
integer width = 2578
integer height = 1596
integer taborder = 140
string title = "none"
string dataobject = "dw_zdsh_shgc"
boolean livescroll = true
end type

event clicked;if row > 0 then
	Il_CurrentRow = row
else
	Il_CurrentRow = 0
end if
end event

type ddlb_bgzl from dropdownlistbox within win_zdsh_gcsd
integer x = 608
integer y = 228
integer width = 1751
integer height = 504
integer taborder = 60
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 16777215
boolean autohscroll = true
boolean sorted = false
boolean vscrollbar = true
end type

event selectionchanged;string ls_NowStr
ls_NowStr = this.Text
ls_NowStr = trim(right(ls_NowStr,3))
if not isnull(ls_NowStr) and ls_NowStr <> '' then
	dw_1.Retrieve(ls_NowStr)
	Is_ShJytype = ls_NowStr
else
	Is_ShJytype = ''
end if
Il_CurrentRow = 0
end event

type st_12 from statictext within win_zdsh_gcsd
integer x = 219
integer y = 240
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

type st_11 from statictext within win_zdsh_gcsd
integer x = 1362
integer y = 128
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

type ddlb_bg from dropdownlistbox within win_zdsh_gcsd
integer x = 1755
integer y = 116
integer width = 603
integer height = 504
integer taborder = 150
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 16777215
boolean sorted = false
boolean vscrollbar = true
end type

event selectionchanged;string ls_fl,ls_mk,condstr,lds_strl
ddlb_bgzl.RESET()
ls_fl = ddlb_fl.text
choose case ls_fl
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
ls_mk = ddlb_bg.text
choose case ls_mk
	case 'È«²¿'
		ls_mkid = '%'	
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
end choose
string id,tempstr1,tempstr2
id = ls_flid + '%'
if ls_fl = 'È«²¿' then
	DECLARE temp_jyqb CURSOR FOR
	SELECT typename,jytype 
	FROM a_bgml WHERE lbid like :id and (mark = '' or mark is null) ORDER BY lbid;
	OPEN temp_jyqb;
	FETCH temp_jyqb INTO :tempstr1,:tempstr2;
	DO WHILE SQLCA.SQLCODE = 0
		ddlb_bgzl.additem(tempstr1 + space(100) + tempstr2)
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
		ddlb_bgzl.additem(tempstr1 + space(100) + tempstr2)
		FETCH temp_jy INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jy;
end if
string ls_NowJytype,ls_NowTypeName,ls_NowStr

dw_1.Reset()
Is_ShJytype = ''

if ddlb_bgzl.SelectItem(1) > 0 then
	ls_NowStr = ddlb_bgzl.Text
	ls_NowStr = trim(right(ls_NowStr,3))
	dw_1.Retrieve(ls_NowStr)
	Is_ShJytype = ls_NowStr
end if
Il_CurrentRow = 0

end event

type ddlb_fl from dropdownlistbox within win_zdsh_gcsd
integer x = 603
integer y = 116
integer width = 599
integer height = 504
integer taborder = 140
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 16777215
boolean sorted = false
boolean vscrollbar = true
end type

event selectionchanged;string ls_fl,ls_NowJyml,ls_sh
ls_fl = ddlb_fl.text
ddlb_bg.RESET()
ddlb_bgzl.RESET()
choose case ls_fl
	case 'ÈÝÆ÷'
		ls_flid = 'rq'
		ls_sh = '10'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case '¹øÂ¯'
		ls_flid = 'gl'
		ls_sh = '11'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case '¹ÜµÀ'
		ls_flid = 'gd'
		ls_sh = '12'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case 'ÆøÆ¿'
		ls_flid = 'qp'
		ls_sh = '13'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case 'Ë®ÖÊ'
		ls_flid = 'sz'
		ls_sh = '14'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case '°²È«·§'
		ls_flid = 'aqf'
		ls_sh = '15'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case 'ÎÞËð¼ì²â'
		ls_flid = 'wsts'
		ls_sh = '16'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case 'µçÌÝ'
		ls_flid = 'dt'
		ls_sh = '17'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case 'ÆðÖØ»ú'
		ls_flid = 'qzj'
		ls_sh = '18'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case '³§³µ'
		ls_flid = 'cc'
		ls_sh = '19'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case 'Ë÷µÀ'
		ls_flid = 'sd'
		ls_sh = '20'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case 'ÓÎÀÖÉèÊ©'
		ls_flid = 'yl'
		ls_sh = '21'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)
	case 'ÆäËü'
		ls_flid = 'qt'
		ls_sh = '22'
		ls_NowJyml = 'È«²¿'
		ddlb_bg.AddItem(ls_NowJyml)	
end choose
///////////////////////
long fl_num
select count(*) into :fl_num from view_bgml_total where sh like :ls_sh and jymk = 'dj';
if fl_num <> 0 then
	ls_NowJyml = '¶¨ÆÚ¼ìÑé'
	ddlb_bg.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :ls_sh and jymk = 'aj';
if fl_num <> 0 then
	ls_NowJyml = '°²×°¼à¼ì'
	ddlb_bg.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :ls_sh and jymk = 'jj';
if fl_num <> 0 then
	ls_NowJyml = 'ÖÆÔì¼à¼ì'
	ddlb_bg.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :ls_sh and jymk = 'jk';
if fl_num <> 0 then
	ls_NowJyml = '½ø³ö¿Ú¼ìÑé'
	ddlb_bg.AddItem(ls_NowJyml)
	fl_num = 0
end if
select count(*) into :fl_num from view_bgml_total where sh like :ls_sh and jymk = 'qj';
if fl_num <> 0 then
	ls_NowJyml = 'ÆäËü¼ìÑé'
	ddlb_bg.AddItem(ls_NowJyml)
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
		ddlb_bgzl.additem(tempstr1 + space(100) + tempstr2)
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
		ddlb_bgzl.additem(tempstr1 + space(100) + tempstr2)
		FETCH temp_jy INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jy;
end if

end event

type st_10 from statictext within win_zdsh_gcsd
integer x = 215
integer y = 128
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

type sle_mlid from singlelineedit within win_zdsh_gcsd
boolean visible = false
integer x = 37
integer y = 1984
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

type cb_exit from commandbutton within win_zdsh_gcsd
event clicked pbm_bnclicked
integer x = 1902
integer y = 424
integer width = 357
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

event clicked;close(win_zdsh_gcsd)
end event

type cb_dele from commandbutton within win_zdsh_gcsd
integer x = 1371
integer y = 424
integer width = 357
integer height = 100
integer taborder = 120
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "É¾³ý"
end type

event clicked;long ll_NowRow
ll_NowRow = Il_CurrentRow
if ll_NowRow < 1 then   
   MessageBox("ÌáÊ¾","µ±Ç°²¢ÎÞÑ¡ÖÐµÄÉóºË¹ý³Ì¿ÉÒÔÉ¾³ý,ÇëÑ¡ÔñÄ³¸öÉóºË¹ý³Ì½øÐÐÉ¾³ý!")
	return
end if
int li_NowNrid
string ls_NowShgc
li_NowNrid = dw_1.GetItemNumber(ll_NowRow,'id')
ls_NowShgc = dw_1.GetItemString(ll_NowRow,'shgc')
if MessageBox("ÌáÊ¾","ÊÇ·ñÈ·¶¨É¾³ýÉóºË¹ý³ÌÎª:"+ls_NowShgc+"µÄµÚ"+string(ll_NowRow)+"ÐÐÊý¾Ý?",QUESTION!,OKCANCEL!) <> 1 then   
   return
end if

delete from a_zdsh_tj where nrid = :li_NowNrid;
if dw_1.DeleteRow(ll_NowRow) = 1 then
	if dw_1.Update() = 1 then
		Commit;
	else
		Rollback;
	end if
end if
	
Il_CurrentRow = 0

end event

type cb_add from commandbutton within win_zdsh_gcsd
integer x = 311
integer y = 424
integer width = 357
integer height = 100
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "Ôö¼Ó"
end type

event clicked;string ls_NowJytype
ls_NowJytype = Is_ShJytype
if isnull(ls_NowJytype) or ls_NowJytype = '' then   
   MessageBox("ÌáÊ¾","±¨¸æÀà±ðÑ¡ÔñÓÐ´íÎó,ÇëÑ¡È¡±¨¸æÀà±ð!")
	return
end if
Is_ShAdd = 'ADD'
open(win_zdsh_shtj)
end event

type gb_2 from groupbox within win_zdsh_gcsd
integer x = 41
integer y = 32
integer width = 2555
integer height = 352
integer taborder = 170
integer textsize = -11
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
end type

