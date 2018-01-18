$PBExportHeader$win_sjsh.srw
forward
global type win_sjsh from window
end type
type cbx_14 from checkbox within win_sjsh
end type
type cbx_12 from checkbox within win_sjsh
end type
type cbx_11 from checkbox within win_sjsh
end type
type cbx_8 from checkbox within win_sjsh
end type
type cbx_13 from checkbox within win_sjsh
end type
type cbx_10 from checkbox within win_sjsh
end type
type cbx_9 from checkbox within win_sjsh
end type
type cbx_7 from checkbox within win_sjsh
end type
type cbx_6 from checkbox within win_sjsh
end type
type cbx_5 from checkbox within win_sjsh
end type
type cbx_4 from checkbox within win_sjsh
end type
type cbx_3 from checkbox within win_sjsh
end type
type cbx_2 from checkbox within win_sjsh
end type
type cbx_1 from checkbox within win_sjsh
end type
type st_4 from statictext within win_sjsh
end type
type st_3 from statictext within win_sjsh
end type
type rb_20 from radiobutton within win_sjsh
end type
type cb_2 from commandbutton within win_sjsh
end type
type cb_1 from commandbutton within win_sjsh
end type
type st_1 from statictext within win_sjsh
end type
type rb_17 from radiobutton within win_sjsh
end type
type st_2 from statictext within win_sjsh
end type
type ln_1 from line within win_sjsh
end type
type ln_2 from line within win_sjsh
end type
type ln_3 from line within win_sjsh
end type
type ln_4 from line within win_sjsh
end type
type rb_15 from radiobutton within win_sjsh
end type
type rb_21 from radiobutton within win_sjsh
end type
end forward

global type win_sjsh from window
integer x = 1074
integer y = 456
integer width = 1509
integer height = 1500
boolean titlebar = true
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 33552359
boolean center = true
cbx_14 cbx_14
cbx_12 cbx_12
cbx_11 cbx_11
cbx_8 cbx_8
cbx_13 cbx_13
cbx_10 cbx_10
cbx_9 cbx_9
cbx_7 cbx_7
cbx_6 cbx_6
cbx_5 cbx_5
cbx_4 cbx_4
cbx_3 cbx_3
cbx_2 cbx_2
cbx_1 cbx_1
st_4 st_4
st_3 st_3
rb_20 rb_20
cb_2 cb_2
cb_1 cb_1
st_1 st_1
rb_17 rb_17
st_2 st_2
ln_1 ln_1
ln_2 ln_2
ln_3 ln_3
ln_4 ln_4
rb_15 rb_15
rb_21 rb_21
end type
global win_sjsh win_sjsh

type variables

checkbox cbx[]
end variables

on win_sjsh.create
this.cbx_14=create cbx_14
this.cbx_12=create cbx_12
this.cbx_11=create cbx_11
this.cbx_8=create cbx_8
this.cbx_13=create cbx_13
this.cbx_10=create cbx_10
this.cbx_9=create cbx_9
this.cbx_7=create cbx_7
this.cbx_6=create cbx_6
this.cbx_5=create cbx_5
this.cbx_4=create cbx_4
this.cbx_3=create cbx_3
this.cbx_2=create cbx_2
this.cbx_1=create cbx_1
this.st_4=create st_4
this.st_3=create st_3
this.rb_20=create rb_20
this.cb_2=create cb_2
this.cb_1=create cb_1
this.st_1=create st_1
this.rb_17=create rb_17
this.st_2=create st_2
this.ln_1=create ln_1
this.ln_2=create ln_2
this.ln_3=create ln_3
this.ln_4=create ln_4
this.rb_15=create rb_15
this.rb_21=create rb_21
this.Control[]={this.cbx_14,&
this.cbx_12,&
this.cbx_11,&
this.cbx_8,&
this.cbx_13,&
this.cbx_10,&
this.cbx_9,&
this.cbx_7,&
this.cbx_6,&
this.cbx_5,&
this.cbx_4,&
this.cbx_3,&
this.cbx_2,&
this.cbx_1,&
this.st_4,&
this.st_3,&
this.rb_20,&
this.cb_2,&
this.cb_1,&
this.st_1,&
this.rb_17,&
this.st_2,&
this.ln_1,&
this.ln_2,&
this.ln_3,&
this.ln_4,&
this.rb_15,&
this.rb_21}
end on

on win_sjsh.destroy
destroy(this.cbx_14)
destroy(this.cbx_12)
destroy(this.cbx_11)
destroy(this.cbx_8)
destroy(this.cbx_13)
destroy(this.cbx_10)
destroy(this.cbx_9)
destroy(this.cbx_7)
destroy(this.cbx_6)
destroy(this.cbx_5)
destroy(this.cbx_4)
destroy(this.cbx_3)
destroy(this.cbx_2)
destroy(this.cbx_1)
destroy(this.st_4)
destroy(this.st_3)
destroy(this.rb_20)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.st_1)
destroy(this.rb_17)
destroy(this.st_2)
destroy(this.ln_1)
destroy(this.ln_2)
destroy(this.ln_3)
destroy(this.ln_4)
destroy(this.rb_15)
destroy(this.rb_21)
end on

event open;cbx[1] = cbx_1
cbx[2] = cbx_2
cbx[3] = cbx_3
cbx[4] = cbx_4
cbx[5] = cbx_5
cbx[6] = cbx_6
cbx[7] = cbx_7
cbx[8] = cbx_8
cbx[9] = cbx_9
cbx[10] = cbx_10
cbx[11] = cbx_11
cbx[12] = cbx_12
cbx[14] = cbx_14
string sjshmark
select sjshmark into :sjshmark from a_jydw where jydw like :gs_jydw;
if pos(sjshmark,'6d')<>0 then
	cbx_14.checked=true
else
	cbx_14.checked=false
end if
if pos(sjshmark,'Ag')<>0 then
	cbx_12.checked=true
else
	cbx_12.checked=false
end if
if pos(sjshmark,'Dg')<>0 then
	cbx_11.checked=true
else
	cbx_11.checked=false
end if
if pos(sjshmark,'Da')<>0 then
	cbx_1.checked=true
else
	cbx_1.checked=false
end if
if pos(sjshmark,'Db')<>0 then
	cbx_2.checked=true
else
	cbx_2.checked=false
end if
if pos(sjshmark,'Di')<>0 then
	cbx_3.checked=true
else
	cbx_3.checked=false
end if
if pos(sjshmark,'Fa')<>0 then
	cbx_4.checked=true
else
	cbx_4.checked=false
end if
if pos(sjshmark,'Fb')<>0 then
	cbx_5.checked=true
else
	cbx_5.checked=false
end if
if pos(sjshmark,'6n')<>0 then
	cbx_6.checked=true
else
	cbx_6.checked=false
end if
if pos(sjshmark,'5t')<>0 then
	cbx_7.checked=true
else
	cbx_7.checked=false
end if
if pos(sjshmark,';c')<>0 then
	cbx_8.checked=true
else
	cbx_8.checked=false
end if
if cbx_12.checked=true and cbx_11.checked=true and cbx_1.checked=true and cbx_2.checked=true and &
	cbx_3.checked=true and cbx_4.checked=true and cbx_5.checked=true and cbx_6.checked=true and &
	cbx_7.checked=true and cbx_8.checked=true and cbx_14.checked=true then
	cbx_13.checked=true
else
	cbx_13.checked=false
end if

end event

type cbx_14 from checkbox within win_sjsh
integer x = 37
integer y = 788
integer width = 622
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Ñ¹Á¦ÈÝÆ÷°²×°¼ìÑé"
end type

type cbx_12 from checkbox within win_sjsh
integer x = 37
integer y = 688
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "µçÕ¾¹øÂ¯Ë®ÖÊ»¯Ñé"
end type

type cbx_11 from checkbox within win_sjsh
integer x = 37
integer y = 588
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "¹¤Òµ¹øÂ¯Ë®ÖÊ»¯Ñé"
end type

type cbx_8 from checkbox within win_sjsh
integer x = 37
integer y = 488
integer width = 878
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Æû³µÔËÊäÒºÌåÎ£ÏÕ»õÎï¹ÞÌå"
end type

type cbx_13 from checkbox within win_sjsh
integer x = 37
integer y = 944
integer width = 517
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "ËùÓÐÏîÄ¿"
end type

event clicked;long i
if this.checked = true then
	for i = 1 to 8
		cbx[i].checked = true 
	next
	cbx[11].checked = true
	cbx[12].checked = true
	cbx[14].checked = true
else
	for i = 1 to 8
		cbx[i].checked = false 
	next
	cbx[11].checked = false 
	cbx[12].checked = false
	cbx[14].checked = false
end if
end event

type cbx_10 from checkbox within win_sjsh
boolean visible = false
integer x = 768
integer y = 1436
integer width = 686
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "»úÐµÊ½Í£³µÉè±¸°²¼ì"
end type

type cbx_9 from checkbox within win_sjsh
boolean visible = false
integer x = 37
integer y = 1436
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "»úÐµÊ½Í£³µÉè±¸¶¨ÆÚ"
end type

type cbx_7 from checkbox within win_sjsh
integer x = 768
integer y = 588
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "¹¤Òµ¹ÜµÀÔÚÏß"
end type

type cbx_6 from checkbox within win_sjsh
integer x = 768
integer y = 388
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Ñ¹Á¦ÈÝÆ÷Äê¶È"
end type

type cbx_5 from checkbox within win_sjsh
integer x = 37
integer y = 388
integer width = 750
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ÓÐ»úÈÈÔØÌåÂ¯Íâ²¿¼ìÑé"
end type

type cbx_4 from checkbox within win_sjsh
integer x = 768
integer y = 288
integer width = 750
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ÓÐ»úÈÈÔØÌåÂ¯ÄÚ²¿¼ìÑé"
end type

type cbx_3 from checkbox within win_sjsh
integer x = 37
integer y = 288
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "¹¤Òµ¹øÂ¯Ë®Ñ¹¼ìÑé"
end type

type cbx_2 from checkbox within win_sjsh
integer x = 768
integer y = 188
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "¹¤Òµ¹øÂ¯Íâ²¿¼ìÑé"
end type

type cbx_1 from checkbox within win_sjsh
integer x = 37
integer y = 188
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "¹¤Òµ¹øÂ¯ÄÚ²¿¼ìÑé"
end type

type st_4 from statictext within win_sjsh
integer x = 41
integer y = 1208
integer width = 1408
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "¶þ¼¶ÉóºË±¨¸æ¡£"
boolean focusrectangle = false
end type

type st_3 from statictext within win_sjsh
integer x = 37
integer y = 1144
integer width = 1408
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "ËµÃ÷£ºÑ¡ÖÐ±¨¸æÎªÈý¼¶ÉóºË±¨¸æ£¬Ã»ÓÐÑ¡ÖÐµÄ±¨¸æÎª"
boolean focusrectangle = false
end type

type rb_20 from radiobutton within win_sjsh
boolean visible = false
integer x = 654
integer y = 1636
integer width = 453
integer height = 80
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Éý½µÆðÖØ»ú"
end type

event clicked;//is_select_mark = '^'
end event

type cb_2 from commandbutton within win_sjsh
integer x = 814
integer y = 1320
integer width = 233
integer height = 88
integer taborder = 20
integer textsize = -10
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË³ö"
end type

event clicked;close(parent)
end event

type cb_1 from commandbutton within win_sjsh
integer x = 343
integer y = 1320
integer width = 233
integer height = 88
integer taborder = 10
integer textsize = -10
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È·¶¨"
end type

event clicked;string is_select_mark

if cbx[14].checked=true then
	is_select_mark = is_select_mark + '6d' + ','
end if
if cbx[1].checked=true then
	is_select_mark = is_select_mark + 'Da' + ','
end if
if cbx[2].checked=true then
	is_select_mark = is_select_mark + 'Db' + ','
end if
if cbx[3].checked=true then
	is_select_mark = is_select_mark + 'Di' + ','
end if
if cbx[4].checked=true then
	is_select_mark = is_select_mark + 'Fa' + ','
end if
if cbx[5].checked=true then
	is_select_mark = is_select_mark + 'Fb' + ','
end if
if cbx[6].checked=true then
	is_select_mark = is_select_mark + '6n' + ','
end if
if cbx[7].checked=true then
	is_select_mark = is_select_mark + '5t' + ','
end if
if cbx[8].checked=true then
	is_select_mark = is_select_mark + ';c' + ','
end if
if cbx[11].checked=true then
	is_select_mark = is_select_mark + 'Dg' + ','
end if
if cbx[12].checked=true then
	is_select_mark = is_select_mark + 'Ag' + ','
end if
//if cbx[6].checked=true then
//	is_select_mark = is_select_mark + '<c' + ','
//end if
//if cbx[7].checked=true then
//	is_select_mark = is_select_mark + '/c' + ','
//end if
//if cbx[8].checked=true then
//	is_select_mark = is_select_mark + '$c' + ','
//end if
//if cbx[9].checked=true then
//	is_select_mark = is_select_mark + '&c' + ','
//end if
//if cbx[10].checked=true then
//	is_select_mark = is_select_mark + '&d' + ','
//end if
update a_jydw set sjshmark = :is_select_mark;
messagebox('ÏµÍ³ÌáÊ¾','ÉèÖÃÍê±Ï!')
end event

type st_1 from statictext within win_sjsh
integer x = 18
integer y = 44
integer width = 1426
integer height = 96
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean enabled = false
string text = "Èý¼¶ÉóºË±¨¸æÉè¶¨"
alignment alignment = center!
boolean focusrectangle = false
end type

type rb_17 from radiobutton within win_sjsh
boolean visible = false
integer x = 114
integer y = 1624
integer width = 411
integer height = 80
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "µ¥ÁºÆðÖØ»ú"
end type

event clicked;//is_select_mark = 'R'
end event

type st_2 from statictext within win_sjsh
integer x = 9
integer y = 12
integer width = 1449
integer height = 140
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean enabled = false
alignment alignment = center!
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type ln_1 from line within win_sjsh
long linecolor = 8388608
integer linethickness = 9
integer beginx = 14
integer beginy = 1296
integer endx = 1435
integer endy = 1296
end type

type ln_2 from line within win_sjsh
long linecolor = 1090519039
integer linethickness = 9
integer beginx = 14
integer beginy = 1276
integer endx = 1435
integer endy = 1276
end type

type ln_3 from line within win_sjsh
long linecolor = 8388608
integer linethickness = 9
integer beginx = 14
integer beginy = 172
integer endx = 1435
integer endy = 172
end type

type ln_4 from line within win_sjsh
long linecolor = 1090519039
integer linethickness = 9
integer beginx = 14
integer beginy = 180
integer endx = 1435
integer endy = 180
end type

type rb_15 from radiobutton within win_sjsh
boolean visible = false
integer x = 663
integer y = 1544
integer width = 393
integer height = 80
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "³§³µ"
end type

event clicked;//is_select_mark = 'H'
end event

type rb_21 from radiobutton within win_sjsh
boolean visible = false
integer x = 69
integer y = 1516
integer width = 453
integer height = 80
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Æû³µ¾ÙÉý»ú"
end type

event clicked;//is_select_mark = '}'
end event

