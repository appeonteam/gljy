$PBExportHeader$win_qzj_order.srw
forward
global type win_qzj_order from window
end type
type st_9 from statictext within win_qzj_order
end type
type st_8 from statictext within win_qzj_order
end type
type st_7 from statictext within win_qzj_order
end type
type st_4 from statictext within win_qzj_order
end type
type st_3 from statictext within win_qzj_order
end type
type cb_2 from commandbutton within win_qzj_order
end type
type cb_1 from commandbutton within win_qzj_order
end type
type st_1 from statictext within win_qzj_order
end type
type st_2 from statictext within win_qzj_order
end type
type ln_1 from line within win_qzj_order
end type
type ln_2 from line within win_qzj_order
end type
type ln_3 from line within win_qzj_order
end type
type ln_4 from line within win_qzj_order
end type
type ln_5 from line within win_qzj_order
end type
type ln_6 from line within win_qzj_order
end type
type rb_1 from radiobutton within win_qzj_order
end type
type rb_2 from radiobutton within win_qzj_order
end type
type st_6 from statictext within win_qzj_order
end type
type st_5 from statictext within win_qzj_order
end type
end forward

global type win_qzj_order from window
integer x = 1074
integer y = 456
integer width = 1509
integer height = 1412
boolean titlebar = true
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 33552359
boolean center = true
st_9 st_9
st_8 st_8
st_7 st_7
st_4 st_4
st_3 st_3
cb_2 cb_2
cb_1 cb_1
st_1 st_1
st_2 st_2
ln_1 ln_1
ln_2 ln_2
ln_3 ln_3
ln_4 ln_4
ln_5 ln_5
ln_6 ln_6
rb_1 rb_1
rb_2 rb_2
st_6 st_6
st_5 st_5
end type
global win_qzj_order win_qzj_order

type variables

checkbox cbx[]
end variables

on win_qzj_order.create
this.st_9=create st_9
this.st_8=create st_8
this.st_7=create st_7
this.st_4=create st_4
this.st_3=create st_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.st_1=create st_1
this.st_2=create st_2
this.ln_1=create ln_1
this.ln_2=create ln_2
this.ln_3=create ln_3
this.ln_4=create ln_4
this.ln_5=create ln_5
this.ln_6=create ln_6
this.rb_1=create rb_1
this.rb_2=create rb_2
this.st_6=create st_6
this.st_5=create st_5
this.Control[]={this.st_9,&
this.st_8,&
this.st_7,&
this.st_4,&
this.st_3,&
this.cb_2,&
this.cb_1,&
this.st_1,&
this.st_2,&
this.ln_1,&
this.ln_2,&
this.ln_3,&
this.ln_4,&
this.ln_5,&
this.ln_6,&
this.rb_1,&
this.rb_2,&
this.st_6,&
this.st_5}
end on

on win_qzj_order.destroy
destroy(this.st_9)
destroy(this.st_8)
destroy(this.st_7)
destroy(this.st_4)
destroy(this.st_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.st_1)
destroy(this.st_2)
destroy(this.ln_1)
destroy(this.ln_2)
destroy(this.ln_3)
destroy(this.ln_4)
destroy(this.ln_5)
destroy(this.ln_6)
destroy(this.rb_1)
destroy(this.rb_2)
destroy(this.st_6)
destroy(this.st_5)
end on

event open;string qzjorder
select qzjorder into :qzjorder from a_jydw where jydw like :gs_jydw;
if pos(qzjorder,'xmb')<>0 then
	rb_1.checked=true
end if
if pos(qzjorder,'bg')<>0 then
	rb_2.checked=true
end if
end event

type st_9 from statictext within win_qzj_order
integer y = 1000
integer width = 2085
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "      3.ÏµÍ³Ö»ÔÊÐíÒ»ÖÖ³ö¾ßË³Ðò£¬Ö»ÄÜÑ¡ÖÐÒ»Ïî¡£"
boolean focusrectangle = false
end type

type st_8 from statictext within win_qzj_order
integer x = 261
integer y = 920
integer width = 773
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "Êé½«×÷Îª Ò»¸öÕûÌå±»³ö¾ß¡£"
boolean focusrectangle = false
end type

type st_7 from statictext within win_qzj_order
integer y = 840
integer width = 2085
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "      2.ÈçÑ¡ÖÐµÚ¶þÏî£¬Ö»³ö¾ß±¨¸æ¡£ÏîÄ¿±íºÍÖ¤"
boolean focusrectangle = false
end type

type st_4 from statictext within win_qzj_order
integer x = 261
integer y = 760
integer width = 1467
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "ÎªÒ»¸öÕûÌå±»³ö¾ß¡£"
boolean focusrectangle = false
end type

type st_3 from statictext within win_qzj_order
integer x = 37
integer y = 680
integer width = 1458
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "ËµÃ÷:1.ÈçÑ¡ÖÐµÚÒ»Ïî£¬ÏîÄ¿±í¡¢±¨¸æ¡¢Ö¤Êé½«×ö"
boolean focusrectangle = false
end type

type cb_2 from commandbutton within win_qzj_order
integer x = 814
integer y = 1128
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

type cb_1 from commandbutton within win_qzj_order
integer x = 343
integer y = 1128
integer width = 233
integer height = 88
integer taborder = 10
integer textsize = -10
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È·¶¨"
end type

event clicked;string is_order_mark
if rb_1.checked=true then
	is_order_mark='xmb'
end if
if rb_2.checked=true then
	is_order_mark='bg'
end if
update a_jydw set qzjorder = :is_order_mark where jydw like :gs_jydw;
messagebox('ÏµÍ³ÌáÊ¾','ÉèÖÃÍê±Ï!')
end event

type st_1 from statictext within win_qzj_order
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
string text = "»úÖØ»ú±¨¸æ³ö¾ßË³ÐòÉè¶¨"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_2 from statictext within win_qzj_order
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

type ln_1 from line within win_qzj_order
long linecolor = 8388608
integer linethickness = 9
integer beginx = 14
integer beginy = 1092
integer endx = 1435
integer endy = 1092
end type

type ln_2 from line within win_qzj_order
long linecolor = 1090519039
integer linethickness = 9
integer beginx = 14
integer beginy = 1104
integer endx = 1435
integer endy = 1104
end type

type ln_3 from line within win_qzj_order
long linecolor = 8388608
integer linethickness = 9
integer beginx = 14
integer beginy = 172
integer endx = 1435
integer endy = 172
end type

type ln_4 from line within win_qzj_order
long linecolor = 1090519039
integer linethickness = 9
integer beginx = 14
integer beginy = 180
integer endx = 1435
integer endy = 180
end type

type ln_5 from line within win_qzj_order
long linecolor = 8388608
integer linethickness = 4
integer beginx = 731
integer beginy = 320
integer endx = 878
integer endy = 288
end type

type ln_6 from line within win_qzj_order
long linecolor = 8388608
integer linethickness = 4
integer beginx = 731
integer beginy = 384
integer endx = 878
integer endy = 416
end type

type rb_1 from radiobutton within win_qzj_order
integer x = 402
integer y = 320
integer width = 297
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ÏîÄ¿±í"
end type

event clicked;if this.checked=true then
	rb_2.checked=false
end if
end event

type rb_2 from radiobutton within win_qzj_order
integer x = 402
integer y = 504
integer width = 297
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "±¨¸æ"
end type

event clicked;if this.checked=true then
	rb_1.checked=false
end if
end event

type st_6 from statictext within win_qzj_order
integer x = 878
integer y = 396
integer width = 151
integer height = 52
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Ö¤Êé"
boolean focusrectangle = false
end type

type st_5 from statictext within win_qzj_order
integer x = 878
integer y = 256
integer width = 151
integer height = 52
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "±¨¸æ"
boolean focusrectangle = false
end type

