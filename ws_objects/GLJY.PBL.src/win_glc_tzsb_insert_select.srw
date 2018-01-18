$PBExportHeader$win_glc_tzsb_insert_select.srw
forward
global type win_glc_tzsb_insert_select from window
end type
type rb_nm from radiobutton within win_glc_tzsb_insert_select
end type
type cbx_14 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_13 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_12 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_15 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_11 from checkbox within win_glc_tzsb_insert_select
end type
type st_6 from statictext within win_glc_tzsb_insert_select
end type
type st_8 from statictext within win_glc_tzsb_insert_select
end type
type st_7 from statictext within win_glc_tzsb_insert_select
end type
type cbx_10 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_9 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_8 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_7 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_6 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_5 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_4 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_3 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_2 from checkbox within win_glc_tzsb_insert_select
end type
type cbx_1 from checkbox within win_glc_tzsb_insert_select
end type
type st_4 from statictext within win_glc_tzsb_insert_select
end type
type st_3 from statictext within win_glc_tzsb_insert_select
end type
type rb_20 from radiobutton within win_glc_tzsb_insert_select
end type
type cb_2 from commandbutton within win_glc_tzsb_insert_select
end type
type cb_1 from commandbutton within win_glc_tzsb_insert_select
end type
type st_1 from statictext within win_glc_tzsb_insert_select
end type
type rb_17 from radiobutton within win_glc_tzsb_insert_select
end type
type st_2 from statictext within win_glc_tzsb_insert_select
end type
type ln_1 from line within win_glc_tzsb_insert_select
end type
type ln_2 from line within win_glc_tzsb_insert_select
end type
type ln_3 from line within win_glc_tzsb_insert_select
end type
type ln_4 from line within win_glc_tzsb_insert_select
end type
type rb_sy from radiobutton within win_glc_tzsb_insert_select
end type
type rb_bz from radiobutton within win_glc_tzsb_insert_select
end type
type st_5 from statictext within win_glc_tzsb_insert_select
end type
type gb_1 from groupbox within win_glc_tzsb_insert_select
end type
type ln_5 from line within win_glc_tzsb_insert_select
end type
type ln_6 from line within win_glc_tzsb_insert_select
end type
end forward

global type win_glc_tzsb_insert_select from window
integer x = 1074
integer y = 456
integer width = 1545
integer height = 1848
boolean titlebar = true
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 33552359
boolean center = true
rb_nm rb_nm
cbx_14 cbx_14
cbx_13 cbx_13
cbx_12 cbx_12
cbx_15 cbx_15
cbx_11 cbx_11
st_6 st_6
st_8 st_8
st_7 st_7
cbx_10 cbx_10
cbx_9 cbx_9
cbx_8 cbx_8
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
rb_sy rb_sy
rb_bz rb_bz
st_5 st_5
gb_1 gb_1
ln_5 ln_5
ln_6 ln_6
end type
global win_glc_tzsb_insert_select win_glc_tzsb_insert_select

type variables

checkbox cbx[]
end variables

on win_glc_tzsb_insert_select.create
this.rb_nm=create rb_nm
this.cbx_14=create cbx_14
this.cbx_13=create cbx_13
this.cbx_12=create cbx_12
this.cbx_15=create cbx_15
this.cbx_11=create cbx_11
this.st_6=create st_6
this.st_8=create st_8
this.st_7=create st_7
this.cbx_10=create cbx_10
this.cbx_9=create cbx_9
this.cbx_8=create cbx_8
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
this.rb_sy=create rb_sy
this.rb_bz=create rb_bz
this.st_5=create st_5
this.gb_1=create gb_1
this.ln_5=create ln_5
this.ln_6=create ln_6
this.Control[]={this.rb_nm,&
this.cbx_14,&
this.cbx_13,&
this.cbx_12,&
this.cbx_15,&
this.cbx_11,&
this.st_6,&
this.st_8,&
this.st_7,&
this.cbx_10,&
this.cbx_9,&
this.cbx_8,&
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
this.rb_sy,&
this.rb_bz,&
this.st_5,&
this.gb_1,&
this.ln_5,&
this.ln_6}
end on

on win_glc_tzsb_insert_select.destroy
destroy(this.rb_nm)
destroy(this.cbx_14)
destroy(this.cbx_13)
destroy(this.cbx_12)
destroy(this.cbx_15)
destroy(this.cbx_11)
destroy(this.st_6)
destroy(this.st_8)
destroy(this.st_7)
destroy(this.cbx_10)
destroy(this.cbx_9)
destroy(this.cbx_8)
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
destroy(this.rb_sy)
destroy(this.rb_bz)
destroy(this.st_5)
destroy(this.gb_1)
destroy(this.ln_5)
destroy(this.ln_6)
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
cbx[13] = cbx_13
cbx[14] = cbx_14
cbx[15] = cbx_15
string qzjmark
select qzjmark into :qzjmark from a_jydw;
if pos(qzjmark,'Vc')<>0 then
	cbx_1.checked=true
else
	cbx_1.checked=false
end if
if pos(qzjmark,'Tc')<>0 then
	cbx_2.checked=true
else
	cbx_2.checked=false
end if
if pos(qzjmark,'Sc')<>0 then
	cbx_3.checked=true
else
	cbx_3.checked=false
end if
if pos(qzjmark,'Wc')<>0 then
	cbx_4.checked=true
else
	cbx_4.checked=false
end if
if pos(qzjmark,'Uc')<>0 then
	cbx_5.checked=true
else
	cbx_5.checked=false
end if
if pos(qzjmark,'<c')<>0 then
	cbx_6.checked=true
else
	cbx_6.checked=false
end if
if pos(qzjmark,'/c')<>0 then
	cbx_7.checked=true
else
	cbx_7.checked=false
end if
if pos(qzjmark,'$c')<>0 then
	cbx_8.checked=true
else
	cbx_8.checked=false
end if
if pos(qzjmark,'&c')<>0 then
	cbx_9.checked=true
else
	cbx_9.checked=false
end if
if pos(qzjmark,'&d')<>0 then
	cbx_10.checked=true
else
	cbx_10.checked=false
end if
if pos(qzjmark,'Rc')<>0 then
	cbx_11.checked=true
else
	cbx_11.checked=false
end if
if pos(qzjmark,'Bc')<>0 then
	cbx_12.checked=true
else
	cbx_12.checked=false
end if
if pos(qzjmark,'>c')<>0 then
	cbx_13.checked=true
else
	cbx_13.checked=false
end if
if pos(qzjmark,'>!')<>0 then
	cbx_14.checked=true
else
	cbx_14.checked=false
end if
if pos(qzjmark,'Vc')<>0 and pos(qzjmark,'Tc')<>0 and pos(qzjmark,'Sc')<>0 and pos(qzjmark,'Wc')<>0 and pos(qzjmark,'Uc')<>0 &
   and pos(qzjmark,'<c')<>0 and pos(qzjmark,'/c')<>0 and pos(qzjmark,'$c')<>0 and pos(qzjmark,'&c')<>0 and pos(qzjmark,'&d')<>0 &
	and pos(qzjmark,'Rc')<>0 and pos(qzjmark,'Bc')<>0 and pos(qzjmark,'>c')<>0 and pos(qzjmark,'>!')<>0 then
	cbx_15.checked=true
else
	cbx_15.checked=false
end if
/////////////////////////////////¸ñÊ½
string qzj_format
select qzj_format into :qzj_format from a_jydw;
if qzj_format='±ê×¼°æ' then
	rb_bz.checked=true
elseif qzj_format='ÉòÑô°æ' then
	rb_sy.checked=true
elseif qzj_format='ÄÚÃÉ°æ' then
	rb_nm.checked=true
end if

end event

type rb_nm from radiobutton within win_glc_tzsb_insert_select
integer x = 960
integer y = 1472
integer width = 357
integer height = 80
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ÄÚÃÉ°æ"
end type

event clicked;if this.checked=true then
	rb_bz.checked=false
	rb_sy.checked=false
end if
end event

type cbx_14 from checkbox within win_glc_tzsb_insert_select
integer x = 407
integer y = 788
integer width = 361
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "²æ³µÊ×¼ì"
end type

type cbx_13 from checkbox within win_glc_tzsb_insert_select
integer x = 37
integer y = 788
integer width = 347
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "²æ³µ¶¨ÆÚ"
end type

type cbx_12 from checkbox within win_glc_tzsb_insert_select
integer x = 768
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
string text = "µçÌÝ¶¨ÆÚ"
end type

type cbx_15 from checkbox within win_glc_tzsb_insert_select
integer x = 768
integer y = 788
integer width = 407
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ËùÓÐÏîÄ¿"
end type

event clicked;long i
if this.checked = true then
	for i = 1 to 14
		cbx[i].checked = true 
	next
else
	for i = 1 to 14
		cbx[i].checked = false 
	next
end if
end event

type cbx_11 from checkbox within win_glc_tzsb_insert_select
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
string text = "µ¥ÁºÆðÖØ»ú¶¨ÆÚ"
end type

type st_6 from statictext within win_glc_tzsb_insert_select
integer x = 9
integer y = 1232
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

type st_8 from statictext within win_glc_tzsb_insert_select
integer x = 41
integer y = 1136
integer width = 1499
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "¶½¼ìÑé±¨¸æÏÖÔÚÏµÍ³ÖÐ¶¨ÆÚÄ£¿éÔö¼ÓÁË¶¨ÆÚºÍÊ×¼ì±¨¸æ¡£"
boolean focusrectangle = false
end type

type st_7 from statictext within win_glc_tzsb_insert_select
integer x = 41
integer y = 1060
integer width = 1605
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "     2.¸ß´¦×÷Òµ³µÓë²æ³µÆðÖØ»úÔ­À´¶¨ÆÚÄ£¿éÖÐÓÐ¼à"
boolean focusrectangle = false
end type

type cbx_10 from checkbox within win_glc_tzsb_insert_select
integer x = 768
integer y = 588
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

type cbx_9 from checkbox within win_glc_tzsb_insert_select
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
string text = "»úÐµÊ½Í£³µÉè±¸¶¨ÆÚ"
end type

type cbx_8 from checkbox within win_glc_tzsb_insert_select
integer x = 768
integer y = 488
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Ðý±ÛÆðÖØ»ú¶¨ÆÚ"
end type

type cbx_7 from checkbox within win_glc_tzsb_insert_select
integer x = 37
integer y = 488
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "µç¶¯ºùÂ«¶¨ÆÚ"
end type

type cbx_6 from checkbox within win_glc_tzsb_insert_select
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
string text = "¼òÒ×Ê©¹¤Éý½µ»ú¶¨ÆÚ"
end type

type cbx_5 from checkbox within win_glc_tzsb_insert_select
integer x = 37
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
string text = "Ê©¹¤Éý½µ»ú¶¨ÆÚ"
end type

type cbx_4 from checkbox within win_glc_tzsb_insert_select
integer x = 768
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
string text = "ÃÅ×ùÊ½ÆðÖØ»ú¶¨ÆÚ"
end type

type cbx_3 from checkbox within win_glc_tzsb_insert_select
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
string text = "Á÷¶¯ÆðÖØ»ú¶¨ÆÚ"
end type

type cbx_2 from checkbox within win_glc_tzsb_insert_select
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
string text = "ËþÊ½ÆðÖØ»ú¶¨ÆÚ"
end type

type cbx_1 from checkbox within win_glc_tzsb_insert_select
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
string text = "ÇÅ(ÃÅ)Ê½ÆðÖØ»ú¶¨ÆÚ"
end type

type st_4 from statictext within win_glc_tzsb_insert_select
integer x = 41
integer y = 984
integer width = 1467
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "ÒÔ¼ÌÐø³ö¾ß£¬´ý³ö¾ßÍêÀÏ°æ±¾±¨¸æºóÑ¡ÔñÐÂ°æ±¾±¨¸æ¡£"
boolean focusrectangle = false
end type

type st_3 from statictext within win_glc_tzsb_insert_select
integer x = 37
integer y = 904
integer width = 1467
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 255
long backcolor = 33552359
string text = "ËµÃ÷£º1.ÈôÖ®Ç°ÀÏ°æ±¾±¨¸æÃ»ÓÐ³ö¾ßÍêÆðÖØ»úµÄ±¨¸æ¿É"
boolean focusrectangle = false
end type

type rb_20 from radiobutton within win_glc_tzsb_insert_select
boolean visible = false
integer x = 654
integer y = 1100
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

type cb_2 from commandbutton within win_glc_tzsb_insert_select
integer x = 814
integer y = 1640
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

type cb_1 from commandbutton within win_glc_tzsb_insert_select
integer x = 343
integer y = 1640
integer width = 233
integer height = 88
integer taborder = 10
integer textsize = -10
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È·¶¨"
end type

event clicked;string is_select_mc,jytype
string is_select_mark
long i
for i = 1 to 14
	if cbx[i].checked = false then continue 
	if cbx[i].checked = true then
		if i = 10 then
			is_select_mc = '»úÐµÊ½Í£³µÉè±¸°²×°¼à¼ì'
		else
			is_select_mc = trim(cbx[i].text) + '¼ìÑé'
		end if
		select jytype into :jytype from view_bgml_total where typename like :is_select_mc;
		if is_select_mark = '' or isnull(is_select_mark) then
			is_select_mark = jytype + ','
		else
			is_select_mark = is_select_mark + jytype + ','
		end if
	end if
next

//////////////////////////////////////////////////////////////////////////////
IF sqlca.sqlcode <>0 THEN
	MessageBox ('','¸üÐÂÊ§°Ü')
	return
else
	update a_jydw set qzjmark = :is_select_mark;
	commit;
	if rb_bz.checked=true then
		update a_jydw set qzj_format = '±ê×¼°æ' where jydw like :gs_jydw;
	end if
	if rb_sy.checked=true then
		update a_jydw set qzj_format = 'ÉòÑô°æ' where jydw like :gs_jydw;
	end if
	if rb_nm.checked=true then
		update a_jydw set qzj_format = 'ÄÚÃÉ°æ' where jydw like :gs_jydw;
	end if
	messagebox('ÏµÍ³ÌáÊ¾','ÉèÖÃÍê±Ï!')
END IF

end event

type st_1 from statictext within win_glc_tzsb_insert_select
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
string text = "ÐÂ°æ±¾ÆðÖØ»úÉè±¸"
alignment alignment = center!
boolean focusrectangle = false
end type

type rb_17 from radiobutton within win_glc_tzsb_insert_select
boolean visible = false
integer x = 114
integer y = 1088
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

type st_2 from statictext within win_glc_tzsb_insert_select
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

type ln_1 from line within win_glc_tzsb_insert_select
long linecolor = 8388608
integer linethickness = 9
integer beginx = 14
integer beginy = 1220
integer endx = 1435
integer endy = 1220
end type

type ln_2 from line within win_glc_tzsb_insert_select
long linecolor = 1090519039
integer linethickness = 9
integer beginx = 14
integer beginy = 1232
integer endx = 1435
integer endy = 1232
end type

type ln_3 from line within win_glc_tzsb_insert_select
long linecolor = 8388608
integer linethickness = 9
integer beginx = 14
integer beginy = 172
integer endx = 1435
integer endy = 172
end type

type ln_4 from line within win_glc_tzsb_insert_select
long linecolor = 1090519039
integer linethickness = 9
integer beginx = 14
integer beginy = 180
integer endx = 1435
integer endy = 180
end type

type rb_sy from radiobutton within win_glc_tzsb_insert_select
integer x = 526
integer y = 1472
integer width = 357
integer height = 80
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ÉòÑô°æ"
end type

event clicked;if this.checked=true then
	rb_bz.checked=false
	rb_nm.checked=false
end if
end event

type rb_bz from radiobutton within win_glc_tzsb_insert_select
integer x = 123
integer y = 1472
integer width = 453
integer height = 80
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "±ê×¼°æ"
boolean checked = true
end type

event clicked;if this.checked=true then
	rb_sy.checked=false
	rb_nm.checked=false
end if
end event

type st_5 from statictext within win_glc_tzsb_insert_select
integer x = 18
integer y = 1252
integer width = 1426
integer height = 96
boolean bringtotop = true
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean enabled = false
string text = "±¨¸æ¸ñÊ½ÉèÖÃ"
alignment alignment = center!
boolean focusrectangle = false
end type

type gb_1 from groupbox within win_glc_tzsb_insert_select
integer x = 18
integer y = 1408
integer width = 1426
integer height = 196
integer taborder = 10
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
end type

type ln_5 from line within win_glc_tzsb_insert_select
long linecolor = 1090519039
integer linethickness = 9
integer beginx = 14
integer beginy = 1388
integer endx = 1435
integer endy = 1388
end type

type ln_6 from line within win_glc_tzsb_insert_select
long linecolor = 8388608
integer linethickness = 9
integer beginx = 14
integer beginy = 1380
integer endx = 1435
integer endy = 1380
end type

