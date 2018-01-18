$PBExportHeader$win_setup_rw.srw
$PBExportComments$¼ìÑé½áÂÛ
forward
global type win_setup_rw from window
end type
type rb_2 from radiobutton within win_setup_rw
end type
type rb_1 from radiobutton within win_setup_rw
end type
type ddlb_2 from dropdownlistbox within win_setup_rw
end type
type st_12 from statictext within win_setup_rw
end type
type st_11 from statictext within win_setup_rw
end type
type ddlb_1 from dropdownlistbox within win_setup_rw
end type
type ddlb_fl from dropdownlistbox within win_setup_rw
end type
type st_10 from statictext within win_setup_rw
end type
type sle_mlid from singlelineedit within win_setup_rw
end type
type dw_1 from datawindow within win_setup_rw
end type
type cb_exit from commandbutton within win_setup_rw
end type
type cb_dele from commandbutton within win_setup_rw
end type
type cb_ok from commandbutton within win_setup_rw
end type
type gb_2 from groupbox within win_setup_rw
end type
type st_title from statictext within win_setup_rw
end type
type st_space from statictext within win_setup_rw
end type
type gb_1 from groupbox within win_setup_rw
end type
end forward

global type win_setup_rw from window
integer x = 9
integer y = 4
integer width = 2395
integer height = 2492
boolean titlebar = true
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 33552359
boolean center = true
rb_2 rb_2
rb_1 rb_1
ddlb_2 ddlb_2
st_12 st_12
st_11 st_11
ddlb_1 ddlb_1
ddlb_fl ddlb_fl
st_10 st_10
sle_mlid sle_mlid
dw_1 dw_1
cb_exit cb_exit
cb_dele cb_dele
cb_ok cb_ok
gb_2 gb_2
st_title st_title
st_space st_space
gb_1 gb_1
end type
global win_setup_rw win_setup_rw

type variables
string gi_jyjlid
string ls_flid,ls_mkid
string gi_typename,gi_jytype
int gi_row
string l_jytype
end variables

event open;string lds_strl,condstr
//select rw into :l_jytype from a_jydw;
if isnull(l_jytype) then l_jytype = ''
settransobject(dw_1,sqlca)
dw_1.reset()
ddlb_fl.AddItem('È«²¿')
long i,j= 1,fl_num
string ls_sh
for i = 10 to 22
	ls_sh = string(i)
	select count(*) into :fl_num from view_bgml_total where sh = :ls_sh;
	if fl_num = 0 then
	else
		choose case i
			case 10
				ddlb_fl.AddItem('ÈÝÆ÷')
				j=j+1
			case 11
				ddlb_fl.AddItem('¹øÂ¯')
				j=j+1
			case 12
				ddlb_fl.AddItem('¹ÜµÀ')
				j=j+1
			case 13
				ddlb_fl.AddItem('ÆøÆ¿')
				j=j+1
			case 14
				ddlb_fl.AddItem('Ë®ÖÊ')	
				j=j+1
			case 15
				ddlb_fl.AddItem('°²È«·§')	
				j=j+1
			case 16
				ddlb_fl.AddItem('ÎÞËðÌ½ÉË')
				j=j+1
			case 17
				ddlb_fl.AddItem('µçÌÝ')
				j=j+1
			case 18
				ddlb_fl.AddItem('ÆðÖØ»ú')
				j=j+1
			case 19
				ddlb_fl.AddItem('³§³µ')
				j=j+1
			case 20
				ddlb_fl.AddItem('Ë÷µÀ')	
				j=j+1
			case 21
				ddlb_fl.AddItem('ÓÎÀÖÉèÊ©')
				j=j+1
			case 22
				ddlb_fl.AddItem('ÆäËü')	
				j=j+1
		end choose
	end if
	fl_num = 0
next
string tempstr1,tempstr2
DECLARE temp_jyqb CURSOR FOR
SELECT typename,jytype 
//FROM view_bgml_total WHERE mark = '' or mark is null ORDER BY sh;
FROM view_bgml_total WHERE (mark = '' or mark is null) and lbid is not null  ORDER BY sh;
OPEN temp_jyqb;
FETCH temp_jyqb INTO :tempstr1,:tempstr2;
DO WHILE SQLCA.SQLCODE = 0
	ddlb_2.additem(tempstr1 + space(100) + tempstr2)
	FETCH temp_jyqb INTO :tempstr1,:tempstr2;
LOOP
CLOSE temp_jyqb;
ddlb_2.additem(space(100))
//////////////////////´°¿Ú´ò¿ªÊ±È¡³ö×ßÈÎÎñµÄ±¨¸æjytype
string rw
string jytype
string typename
int l_row
select rw into :rw from a_jydw;
l_jytype = rw
for i=1 to len(rw)
	jytype=left(rw,(pos(rw,',') - 1))
	select typename into :typename from view_bgml_total where jytype = :jytype;
	l_row = dw_1.insertrow(0)
	setitem(dw_1,l_row,'typename',typename)
	setitem(dw_1,l_row,'jytype',jytype)
	///////////////////////////½«²é¹ýµÄjytypeÉ¾³ý
	rw = mid(rw,(pos(rw,',') + 1),(len(rw) - pos(rw,',')))
	i = 1
next
setnull(gi_jyjlid)
setnull(gi_jymlid)
setnull(gi_jylbid)

end event

on win_setup_rw.create
this.rb_2=create rb_2
this.rb_1=create rb_1
this.ddlb_2=create ddlb_2
this.st_12=create st_12
this.st_11=create st_11
this.ddlb_1=create ddlb_1
this.ddlb_fl=create ddlb_fl
this.st_10=create st_10
this.sle_mlid=create sle_mlid
this.dw_1=create dw_1
this.cb_exit=create cb_exit
this.cb_dele=create cb_dele
this.cb_ok=create cb_ok
this.gb_2=create gb_2
this.st_title=create st_title
this.st_space=create st_space
this.gb_1=create gb_1
this.Control[]={this.rb_2,&
this.rb_1,&
this.ddlb_2,&
this.st_12,&
this.st_11,&
this.ddlb_1,&
this.ddlb_fl,&
this.st_10,&
this.sle_mlid,&
this.dw_1,&
this.cb_exit,&
this.cb_dele,&
this.cb_ok,&
this.gb_2,&
this.st_title,&
this.st_space,&
this.gb_1}
end on

on win_setup_rw.destroy
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.ddlb_2)
destroy(this.st_12)
destroy(this.st_11)
destroy(this.ddlb_1)
destroy(this.ddlb_fl)
destroy(this.st_10)
destroy(this.sle_mlid)
destroy(this.dw_1)
destroy(this.cb_exit)
destroy(this.cb_dele)
destroy(this.cb_ok)
destroy(this.gb_2)
destroy(this.st_title)
destroy(this.st_space)
destroy(this.gb_1)
end on

type rb_2 from radiobutton within win_setup_rw
integer x = 1394
integer y = 1680
integer width = 562
integer height = 92
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
string text = "ÅúÁ¿±¨¸æÉè¶¨"
end type

event clicked;string ls_fl,ls_mk
if rb_2.checked = true then
	ddlb_2.enabled = false
   ls_fl = ddlb_fl.text
	ls_mk = ddlb_1.text
	ddlb_2.text = space(100)
	if isnull(ls_fl) then ls_fl = ''
	if isnull(ls_mk) then ls_mk = ''
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
	end choose
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
	string qcstr,cs1
	string id
	id = ls_flid + '%'
	if ls_mk <> '' and ls_fl <> '' then
		if ls_mk = 'È«²¿' then
			qcstr = " where (mark = '' or mark is null) and lbid like '"+id+"' ORDER BY sh,lbid "
		else
			qcstr = " where (mark = '' or mark is null) and lbid like '"+id+"' and jymk like '"+ls_mkid+"' ORDER BY sh,lbid "
		end if
	elseif ls_fl <> '' and ls_mk = '' then
		if ls_mk = 'È«²¿' then
			qcstr = " where (mark = '' or mark is null) and lbid is not null ORDER BY sh,lbid "
		else
			qcstr = " where (mark = '' or mark is null) and lbid like '"+id+"' ORDER BY sh,lbid "
		end if
	elseif ls_fl = '' and ls_mk = '' then 
		return
	end if
	cs1 = " select typename,jytype from view_bgml_total " + qcstr
	string tempstr1,tempstr2
	int row
	Declare temp_jy dynamic cursor for sqlsa;
	prepare sqlsa from :cs1;
	Open dynamic temp_jy;
	Fetch temp_jy into :tempstr1,:tempstr2;
	DO WHILE SQLCA.SQLCODE = 0
		if rb_2.checked = true then
			if pos(l_jytype,tempstr2) > 0 then 
			else
				row = dw_1.insertrow(0)
				setitem(dw_1,row,'typename',tempstr1)
				setitem(dw_1,row,'jytype',tempstr2)
				l_jytype = l_jytype + tempstr2  + ','
			end if
		else
			ddlb_2.additem(tempstr1 + space(100) + tempstr2)
		end if
		FETCH temp_jy INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jy;
else
	ddlb_2.enabled = true
end if
end event

type rb_1 from radiobutton within win_setup_rw
integer x = 736
integer y = 1680
integer width = 562
integer height = 92
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
string text = "µ¥¸ö±¨¸æÉè¶¨"
boolean checked = true
end type

event clicked;if rb_1.checked = true then
	ddlb_2.enabled = true
else
	ddlb_2.enabled = false
end if
end event

type ddlb_2 from dropdownlistbox within win_setup_rw
integer x = 608
integer y = 1972
integer width = 1545
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

event selectionchanged;string typename,temp
string jyml,jylb
string temp_jytype
int i
temp = trim(right(trim(ddlb_2.text),3))
if temp = '' or isnull(temp) then
else
	gi_jymlid = left(temp,len(temp) - 1)
	gi_jylbid = right(temp,1)
	typename = trim(left(ddlb_2.text,50))
	for i=1 to dw_1.rowcount()
		temp_jytype = dw_1.getitemstring(i,'jytype')
		if gi_jymlid+gi_jylbid=temp_jytype then
			messagebox('ÌáÊ¾','ÄúÒÑÑ¡ÔñÁË¸Ã±¨¸æ£¡')
			return
		else
			continue;
		end if
	next
	int row
	row = dw_1.insertrow(0)
	setitem(dw_1,row,'typename',typename)
	setitem(dw_1,row,'jytype',gi_jymlid+gi_jylbid)
	l_jytype = l_jytype + gi_jymlid+gi_jylbid  + ','
end if
end event

type st_12 from statictext within win_setup_rw
integer x = 219
integer y = 1984
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

type st_11 from statictext within win_setup_rw
integer x = 1207
integer y = 1872
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

type ddlb_1 from dropdownlistbox within win_setup_rw
integer x = 1600
integer y = 1860
integer width = 558
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

ddlb_2.RESET()
ls_mk = ddlb_1.text
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
end choose
string id,tempstr1,tempstr2
int row
id = ls_flid + '%'
if ls_mk = 'È«²¿' then
	DECLARE temp_jyqb CURSOR FOR
	SELECT typename,jytype 
	FROM view_bgml_total WHERE lbid like :id and (mark = '' or mark is null) ORDER BY sh,lbid;
	OPEN temp_jyqb;
	FETCH temp_jyqb INTO :tempstr1,:tempstr2;
	DO WHILE SQLCA.SQLCODE = 0
		if rb_2.checked = true then
			if pos(l_jytype,tempstr2) > 0 then 
			else
				row = dw_1.insertrow(0)
				setitem(dw_1,row,'typename',tempstr1)
				setitem(dw_1,row,'jytype',tempstr2)
				l_jytype = l_jytype + tempstr2  + ','
			end if
		else
			ddlb_2.additem(tempstr1 + space(100) + tempstr2)
		end if
		FETCH temp_jyqb INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jyqb;
else
	DECLARE temp_jy CURSOR FOR
	SELECT typename,jytype  
	FROM view_bgml_total WHERE lbid like :id and jymk like :ls_mkid and (mark = '' or mark is null) ORDER BY sh,lbid;
	OPEN temp_jy;
	FETCH temp_jy INTO :tempstr1,:tempstr2;
	DO WHILE SQLCA.SQLCODE = 0
		if rb_2.checked = true then
			if pos(l_jytype,tempstr2) > 0 then 
			else
				row = dw_1.insertrow(0)
				setitem(dw_1,row,'typename',tempstr1)
				setitem(dw_1,row,'jytype',tempstr2)
				l_jytype = l_jytype + tempstr2  + ','
			end if
		else
			ddlb_2.additem(tempstr1 + space(100) + tempstr2)
		end if
		FETCH temp_jy INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jy;
end if
ddlb_2.additem(space(100))
end event

type ddlb_fl from dropdownlistbox within win_setup_rw
integer x = 608
integer y = 1860
integer width = 553
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

event selectionchanged;string ls_fl,ls_NowJyml
long row

long fl_num

ls_fl = ddlb_fl.text
ddlb_1.RESET()
ddlb_2.RESET()

choose case ls_fl
	case 'È«²¿'
		select count(*) into :fl_num from view_bgml_total where jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where jymk = 'jj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÖÆÔì¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where jymk = 'jk';
		if fl_num <> 0 then
         ls_NowJyml = '½ø³ö¿Ú¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where jymk = 'qj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÆäËü¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case 'ÈÝÆ÷'
		ls_flid = 'rq'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '10' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '10' and jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '10' and jymk = 'jj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÖÆÔì¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '10' and jymk = 'jk';
		if fl_num <> 0 then
         ls_NowJyml = '½ø³ö¿Ú¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case '¹øÂ¯'
		ls_flid = 'gl'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '11' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '11' and jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '11' and jymk = 'jj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÖÆÔì¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '11' and jymk = 'jk';
		if fl_num <> 0 then
         ls_NowJyml = '½ø³ö¿Ú¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case '¹ÜµÀ'
		ls_flid = 'gd'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '12' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '12' and jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '12' and jymk = 'jj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÖÆÔì¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case 'ÆøÆ¿'
		ls_flid = 'qp'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '13' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '13' and jymk = 'jj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÖÆÔì¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case 'Ë®ÖÊ'
		ls_flid = 'sz'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '14' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '14' and jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	   select count(*) into :fl_num from view_bgml_total where sh = '14' and jymk = 'qj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÆäËü¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case '°²È«·§'
		ls_flid = 'aqf'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '15' and jymk = 'qj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÆäËü¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case 'ÎÞËð¼ì²â'
		ls_flid = 'wsts'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '16' and jymk = 'qj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÆäËü¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case 'µçÌÝ'
		ls_flid = 'dt'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '17' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '17' and jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '17' and jymk = 'qj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÆäËü¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case 'ÆðÖØ»ú'
		ls_flid = 'qzj'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '18' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '18' and jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '18' and jymk = 'jj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÖÆÔì¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case '³§³µ'
		ls_flid = 'cc'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '19' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '19' and jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case 'Ë÷µÀ'
		ls_flid = 'sd'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '20' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '20' and jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case 'ÓÎÀÖÉèÊ©'
		ls_flid = 'yl'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '21' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '21' and jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
	case 'ÆäËü'
		ls_flid = 'qt'
		ls_NowJyml = 'È«²¿'
		ddlb_1.AddItem(ls_NowJyml)
		select count(*) into :fl_num from view_bgml_total where sh = '22' and jymk = 'dj';
		if fl_num <> 0 then
         ls_NowJyml = '¶¨ÆÚ¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '22' and jymk = 'aj';
		if fl_num <> 0 then
         ls_NowJyml = '°²×°¼à¼ì'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
		select count(*) into :fl_num from view_bgml_total where sh = '22' and jymk = 'qj';
		if fl_num <> 0 then
         ls_NowJyml = 'ÆäËü¼ìÑé'
		   ddlb_1.AddItem(ls_NowJyml)
			fl_num = 0
		end if
end choose

string id,tempstr1,tempstr2
id = ls_flid + '%'
if ls_fl = 'È«²¿' then
	DECLARE temp_jyqb CURSOR FOR
	SELECT typename,jytype 
   FROM view_bgml_total WHERE (mark = '' or mark is null) and lbid is not null ORDER BY sh,lbid;
	OPEN temp_jyqb;
	FETCH temp_jyqb INTO :tempstr1,:tempstr2;
	DO WHILE SQLCA.SQLCODE = 0
		if rb_2.checked = true then
			if pos(l_jytype,tempstr2) > 0 then 
			else
				row = dw_1.insertrow(0)
				setitem(dw_1,row,'typename',tempstr1)
				setitem(dw_1,row,'jytype',tempstr2)
				l_jytype = l_jytype + tempstr2  + ','
			end if
		else
			ddlb_2.additem(tempstr1 + space(100) + tempstr2)
		end if
		FETCH temp_jyqb INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jyqb;
else
	DECLARE temp_jy CURSOR FOR
	SELECT typename,jytype  
	FROM view_bgml_total WHERE lbid like :id and (mark = '' or mark is null) ORDER BY sh,lbid;
	OPEN temp_jy;
	FETCH temp_jy INTO :tempstr1,:tempstr2;
	DO WHILE SQLCA.SQLCODE = 0
		ddlb_2.additem(tempstr1 + space(100) + tempstr2)
		FETCH temp_jy INTO :tempstr1,:tempstr2;
	LOOP
	CLOSE temp_jy;
end if
ddlb_1.AddItem(space(100))
ddlb_2.additem(space(100))
end event

type st_10 from statictext within win_setup_rw
integer x = 219
integer y = 1872
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

type sle_mlid from singlelineedit within win_setup_rw
boolean visible = false
integer x = 37
integer y = 2028
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

type dw_1 from datawindow within win_setup_rw
integer x = 73
integer y = 384
integer width = 2231
integer height = 1248
integer taborder = 10
string dataobject = "dat_setup_rw"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;if right(dwo.name,2) = '_t' then 
	fun_sort(this,dwo.name)
	selectrow(0,false)
	setnull(gi_typename)
	setnull(gi_jytype)
	setnull(gi_row)
	return
end if

if row > 0 then
   selectrow(0,false)
	selectrow(row,true)
	gi_row = row
	gi_typename = getitemstring(row,'typename')
	gi_jytype = getitemstring(row,'jytype')
else
	setnull(gi_typename)
	setnull(gi_jytype)
	setnull(gi_row)
end if

end event

type cb_exit from commandbutton within win_setup_rw
event clicked pbm_bnclicked
integer x = 1531
integer y = 2136
integer width = 343
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
setnull(gi_typename)
setnull(gi_jytype)
setnull(gi_row)
close(win_setup_rw)
string rw
select rw into :rw from a_jydw;
if isnull(rw) or rw = '' then
	win_xtgl_jydw_fy.tab_1.tabpage_3.st_48.visible = false
	win_xtgl_jydw_fy.tab_1.tabpage_3.rb_system_from1.checked = true
	win_xtgl_jydw_fy.tab_1.tabpage_3.rb_system_from2.checked = false
	update a_jydw set rw = ''; //BSÊ¹ÓÃ£¬²»Ê¶±ð¡°null¡±
else
	win_xtgl_jydw_fy.tab_1.tabpage_3.st_48.visible = true
	win_xtgl_jydw_fy.tab_1.tabpage_3.rb_system_from1.checked = false
	win_xtgl_jydw_fy.tab_1.tabpage_3.rb_system_from2.checked = true
end if
	
end event

type cb_dele from commandbutton within win_setup_rw
integer x = 1010
integer y = 2136
integer width = 343
integer height = 100
integer taborder = 120
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "É¾³ý"
end type

event clicked;string temp_num
string rw_temp
if dw_1.rowcount() <= 0 then
   return
end if	
if gi_row= 0 or isnull(gi_row) then
	messagebox('ÌáÊ¾','ÇëÑ¡ÖÐ±¨¸æ£¡')
else
	select rw into :rw_temp from a_jydw;
	choose case pos(rw_temp,gi_jytype)
		case 1
			l_jytype = mid(l_jytype,len(gi_jytype) + 2)
		case len(l_jytype) - len(gi_jytype) - 1 
			l_jytype = left(l_jytype,len(l_jytype) - len(gi_jytype) - 1)
		case else
			l_jytype = left(l_jytype,pos(l_jytype,gi_jytype) - 1) + right(l_jytype,pos(l_jytype,gi_jytype) + len(gi_jytype))
	end choose
	dw_1.deleterow(gi_row)
end if
update a_bgml set jhsh = '' where jytype = :gi_jytype;
update a_jydw set rw = :l_jytype; 
end event

type cb_ok from commandbutton within win_setup_rw
integer x = 489
integer y = 2136
integer width = 343
integer height = 100
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "±£´æ"
boolean default = true
end type

event clicked;IF sqlca.sqlcode <>0 THEN
	messagebox('ÏµÍ³ÌáÊ¾','±£´æÊ§°Ü£¡')
	return
else
//	string old_jytype
//	select rw into :old_jytype from a_jydw;
//	if l_jytype = old_jytype then
//	else
//		if dw_1.rowcount()=0 then
//			update a_jydw set rw = '';	
//		else
//			if l_jytype=''then
//			else
//		     update a_jydw set rw = :l_jytype;
//	      end if
//	   end if
//	end if
//	if dw_1.rowcount()=0 then
//		update a_jydw set rw = :l_jytype;
//	end if
update a_bgml set  jhsh = '';
string jytype_total,jytype_add
int i
   for i=1 to dw_1.rowcount()
		jytype_add=getitemstring(dw_1,i,'jytype')
		update a_bgml set  jhsh = '1' where jytype = :jytype_add;
		jytype_total = jytype_total + jytype_add + ','
	next
	update a_jydw set rw = :jytype_total; 
	commit;
	messagebox('ÏµÍ³ÌáÊ¾','±£´æ³É¹¦£¡')
END IF



end event

type gb_2 from groupbox within win_setup_rw
integer x = 183
integer y = 1776
integer width = 2011
integer height = 352
integer taborder = 170
integer textsize = -11
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
end type

type st_title from statictext within win_setup_rw
integer x = 562
integer y = 132
integer width = 1266
integer height = 168
integer textsize = -26
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 255
long backcolor = 33552359
boolean enabled = false
string text = "ÈÎÎñÉèÖÃ"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_space from statictext within win_setup_rw
integer x = 73
integer y = 64
integer width = 2231
integer height = 288
integer textsize = -28
integer weight = 700
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "·ÂËÎ_GB2312"
long textcolor = 128
long backcolor = 33552359
boolean enabled = false
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type gb_1 from groupbox within win_setup_rw
integer x = 187
integer y = 1636
integer width = 2025
integer height = 144
integer taborder = 20
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
string text = "Ñ¡ÔñÓÃ»§"
end type

