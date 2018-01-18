$PBExportHeader$win_xzdw.srw
forward
global type win_xzdw from window
end type
type dw_2 from datawindow within win_xzdw
end type
type cb_4 from commandbutton within win_xzdw
end type
type cb_3 from commandbutton within win_xzdw
end type
type sle_2 from singlelineedit within win_xzdw
end type
type st_2 from statictext within win_xzdw
end type
type cb_2 from commandbutton within win_xzdw
end type
type cb_1 from commandbutton within win_xzdw
end type
type sle_1 from singlelineedit within win_xzdw
end type
type st_1 from statictext within win_xzdw
end type
type dw_1 from datawindow within win_xzdw
end type
type gb_1 from groupbox within win_xzdw
end type
type gb_2 from groupbox within win_xzdw
end type
end forward

global type win_xzdw from window
integer width = 3534
integer height = 2372
boolean border = false
windowtype windowtype = child!
long backcolor = 16777215
string icon = "AppIcon!"
boolean center = true
dw_2 dw_2
cb_4 cb_4
cb_3 cb_3
sle_2 sle_2
st_2 st_2
cb_2 cb_2
cb_1 cb_1
sle_1 sle_1
st_1 st_1
dw_1 dw_1
gb_1 gb_1
gb_2 gb_2
end type
global win_xzdw win_xzdw

type variables
string ls_sqlstr
end variables

on win_xzdw.create
this.dw_2=create dw_2
this.cb_4=create cb_4
this.cb_3=create cb_3
this.sle_2=create sle_2
this.st_2=create st_2
this.cb_2=create cb_2
this.cb_1=create cb_1
this.sle_1=create sle_1
this.st_1=create st_1
this.dw_1=create dw_1
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.dw_2,&
this.cb_4,&
this.cb_3,&
this.sle_2,&
this.st_2,&
this.cb_2,&
this.cb_1,&
this.sle_1,&
this.st_1,&
this.dw_1,&
this.gb_1,&
this.gb_2}
end on

on win_xzdw.destroy
destroy(this.dw_2)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.sle_2)
destroy(this.st_2)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.sle_1)
destroy(this.st_1)
destroy(this.dw_1)
destroy(this.gb_1)
destroy(this.gb_2)
end on

event open;this.x= win_xtgl_ry.x
this.y= win_xtgl_ry.y
dw_1.settransobject(sqlca)
dw_1.reset()
dw_2.settransobject(sqlca)
dw_2.retrieve()
long dw_2_rowcount,i,insert_row
string sydw,xzdw
select xzdw into :xzdw from a_rycode WHERE ryid like :gs_keyno; 
dw_2_rowcount=dw_2.rowcount()
if dw_2_rowcount=0 then
	messagebox('ÏµÍ³ÌáÊ¾£¡','ÄúÃ»ÓÐÔÚÊ¹ÓÃµ¥Î»Êý¾Ý×ÖµäÖÐÌí¼ÓÊ¹ÓÃµ¥Î»£¬ÇëÌí¼Ó£¡')
	return
else
	for i=1 to dw_2_rowcount
		sydw=dw_2.getitemstring(i,'sydw')
		insert_row=dw_1.insertrow(0)
		dw_1.setitem(insert_row,'sydw',sydw)
		if pos(xzdw,sydw)<>0 then
			dw_1.setitem(insert_row,'xzdw','1')
		end if
	next
end if
ls_sqlstr = dw_2.getsqlselect()
//if isnull(xzdw) or xzdw='' then
//else
//	long pos_1,ll_CurRow
//	pos_1 = pos(xzdw,'/',1)
//	sydw = mid(xzdw,1,pos_1 - 1)
//	if isnull(sydw) or sydw = '' then
//		ll_CurRow = dw_1.Find("sydw like '" +sydw+ "'", 1, dw_1.rowcount())
//		dw_1.setitem(ll_CurRow,'xzdw','1')
//	end if
//	xzdw = mid(xzdw,pos_1 + 1,len(xzdw))
//	do while pos_1 >0 
//		pos_1 = pos(xzdw,'/',1)
//		sydw = mid(xzdw,1,pos_1 - 1)
//		if isnull(sydw) or sydw = '' then
//		else
//			ll_CurRow = dw_1.Find("sydw like '" +sydw+ "'", 1, dw_1.rowcount())
//			dw_1.setitem(ll_CurRow,'xzdw','1')
//		end if
//		xzdw = mid(xzdw,pos_1 + 1,len(xzdw))
//	loop
//end if
//ls_sqlstr = dw_1.getsqlselect()
//string xzdw
//select xzdw into :xzdw from a_rycode WHERE ryid like :gs_keyno; 
//if isnull(xzdw) or xzdw='' then
//else
//	long pos_1,ll_CurRow
//	string sydw
//	pos_1 = pos(xzdw,'/',1)
//	sydw = mid(xzdw,1,pos_1 - 1)
//	if isnull(sydw) or sydw = '' then
//	else
//		ll_CurRow = dw_1.Find("sydw like '" +sydw+ "'", 1, dw_1.rowcount())
//		dw_1.setitem(ll_CurRow,'xzdw','1')
//	end if
//	xzdw = mid(xzdw,pos_1 + 1,len(xzdw))
//	do while pos_1 >0 
//		pos_1 = pos(xzdw,'/',1)
//		sydw = mid(xzdw,1,pos_1 - 1)
//		if isnull(sydw) or sydw = '' then
//		else
//			ll_CurRow = dw_1.Find("sydw like '" +sydw+ "'", 1, dw_1.rowcount())
//			dw_1.setitem(ll_CurRow,'xzdw','1')
//		end if
//		xzdw = mid(xzdw,pos_1 + 1,len(xzdw))
//	loop
//end if
end event

type dw_2 from datawindow within win_xzdw
boolean visible = false
integer x = 530
integer y = 2056
integer width = 530
integer height = 232
integer taborder = 70
string title = "none"
string dataobject = "sydw_retrieve"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_4 from commandbutton within win_xzdw
boolean visible = false
integer x = 3223
integer y = 2168
integer width = 265
integer height = 80
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÖØÖÃ"
end type

event clicked;sle_1.text = ''
sle_2.text = ''
dw_1.reset()
dw_1.retrieve()
end event

type cb_3 from commandbutton within win_xzdw
integer x = 2528
integer y = 1776
integer width = 265
integer height = 80
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "²éÑ¯"
end type

event clicked;string dwmc,condstr
long dw_2_rowcount,i,insert_row
string sydw,xzdw
select xzdw into :xzdw from a_rycode WHERE ryid like :gs_keyno; 
dwmc = '%' + trim(sle_2.text) + '%'
dw_1.reset()
condstr = " where sydw like '"+dwmc+"' order by sydw"
dw_2.setsqlselect(ls_sqlstr + condstr)
dw_2.retrieve()
dw_2_rowcount=dw_2.rowcount()
if dw_2_rowcount=0 then
	messagebox('ÏµÍ³ÌáÊ¾£¡','Ã»ÓÐÄúËù²éÕÒµÄµ¥Î»£¬ÇëÖØÐÂ²éÕÒ£¡')
	return
else
	for i=1 to dw_2_rowcount
		sydw=dw_2.getitemstring(i,'sydw')
		insert_row=dw_1.insertrow(0)
		dw_1.setitem(insert_row,'sydw',sydw)
		if pos(xzdw,sydw)<>0 then
			dw_1.setitem(insert_row,'xzdw','1')
		end if
	next
end if
//condstr = " where sydw like '"+dwmc+"' order by sydw"
//condstr = " sydw like '"+dwmc+"' order by sydw"
//dw_1.setsqlselect(ls_sqlstr + condstr)
//dw_1.retrieve()
//string xzdw
//select xzdw into :xzdw from a_rycode WHERE ryid like :gs_keyno; 
//if isnull(xzdw) or xzdw='' then
//else
//	long pos_1,ll_CurRow
//	string sydw
//	pos_1 = pos(xzdw,'/',1)
//	sydw = mid(xzdw,1,pos_1 - 1)
//	if isnull(sydw) or sydw = '' then
//	else
//		ll_CurRow = dw_1.Find("sydw like '" +sydw+ "'", 1, dw_1.rowcount())
//		dw_1.setitem(ll_CurRow,'xzdw','1')
//	end if
//	xzdw = mid(xzdw,pos_1 + 1,len(xzdw))
//	do while pos_1 >0 
//		pos_1 = pos(xzdw,'/',1)
//		sydw = mid(xzdw,1,pos_1 - 1)
//		if isnull(sydw) or sydw = '' then
//		else
//			ll_CurRow = dw_1.Find("sydw like '" +sydw+ "'", 1, dw_1.rowcount())
//			dw_1.setitem(ll_CurRow,'xzdw','1')
//		end if
//		xzdw = mid(xzdw,pos_1 + 1,len(xzdw))
//	loop
//end if
end event

type sle_2 from singlelineedit within win_xzdw
integer x = 443
integer y = 1776
integer width = 2071
integer height = 92
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within win_xzdw
integer x = 165
integer y = 1792
integer width = 288
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
long backcolor = 16777215
string text = "µ¥Î»Ãû³Æ:"
boolean focusrectangle = false
end type

type cb_2 from commandbutton within win_xzdw
integer x = 1979
integer y = 1888
integer width = 265
integer height = 80
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È¡Ïû"
end type

event clicked;close(win_xzdw)
end event

type cb_1 from commandbutton within win_xzdw
integer x = 1339
integer y = 1888
integer width = 265
integer height = 80
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È·¶¨"
end type

event clicked;dw_1.accepttext()
int i
string xzdw,xzdw1,sydw
for i = 1 to dw_1.rowcount()
	xzdw = getitemstring(dw_1,i,'xzdw')
	sydw = getitemstring(dw_1,i,'sydw')
	if xzdw = '1' then
		xzdw1 = xzdw1 + string(sydw) + '/'
	end if
next
update a_rycode set xzdw =:xzdw1 WHERE ryid like :gs_keyno;
commit;
messagebox('ÏµÍ³ÌáÊ¾','³É¹¦!')
end event

type sle_1 from singlelineedit within win_xzdw
event enchange pbm_enchange
boolean visible = false
integer x = 443
integer y = 2168
integer width = 2071
integer height = 92
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event enchange;string dwmc
long ll_CurRow
dwmc = trim(sle_1.text)
if isnull(dwmc) then dwmc = ''

ll_CurRow = dw_1.Find("sydw like '" +'%'+ dwmc +'%'+ "'", 1, dw_1.rowcount())
if ll_CurRow = 0 then
	return
end if
dw_1.selectrow(0,false)
//dw_1.SelectRow(ll_CurRow,false)
dw_1.ScrollToRow(ll_CurRow)
dw_1.SelectRow(ll_CurRow,true)
end event

type st_1 from statictext within win_xzdw
boolean visible = false
integer x = 169
integer y = 2188
integer width = 288
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
long backcolor = 16777215
string text = "µ¥Î»Ãû³Æ:"
boolean focusrectangle = false
end type

type dw_1 from datawindow within win_xzdw
integer width = 3520
integer height = 1704
integer taborder = 10
string title = "none"
string dataobject = "sydw_lhyt"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;string temp
if right(dwo.name,2) = '_t' then 
   selectrow(0,false)
	temp = left(trim(dwo.name),len(trim(dwo.name)) - 2) + ' A'
	dw_1.setsort(temp)
	dw_1.sort()
end if
end event

event doubleclicked;int i
if dwo.name = 'xzdw_t' then
	if this.object.xzdw_t.text = 'È«Ñ¡' then
      for i = 1 to this.rowcount()
			 setitem(this,i,'xzdw','1')
		next
		this.object.xzdw_t.text = 'ÖØÖÃ'		
	else
		for i = 1 to this.rowcount()
			 setitem(this,i,'xzdw','0')
		next
		this.object.xzdw_t.text = 'È«Ñ¡'
	end if
end if
end event

type gb_1 from groupbox within win_xzdw
boolean visible = false
integer x = 5
integer y = 2132
integer width = 3520
integer height = 136
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
long backcolor = 16777215
string text = "¶¨Î»Ìõ¼þ"
end type

type gb_2 from groupbox within win_xzdw
integer y = 1740
integer width = 3520
integer height = 136
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 33554432
long backcolor = 16777215
string text = "Ä£ºý²éÑ¯"
end type

