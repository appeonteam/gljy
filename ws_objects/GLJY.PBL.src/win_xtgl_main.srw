$PBExportHeader$win_xtgl_main.srw
$PBExportComments$ÏµÍ³Î¬»¤_Ö÷
forward
global type win_xtgl_main from window
end type
type st_w4 from statictext within win_xtgl_main
end type
type p_w4 from picture within win_xtgl_main
end type
type st_wb4 from statictext within win_xtgl_main
end type
type cb_w4 from commandbutton within win_xtgl_main
end type
type p_7 from picture within win_xtgl_main
end type
type p_6 from picture within win_xtgl_main
end type
type p_5 from picture within win_xtgl_main
end type
type p_4 from picture within win_xtgl_main
end type
type p_3 from picture within win_xtgl_main
end type
type p_2 from picture within win_xtgl_main
end type
type p_1 from picture within win_xtgl_main
end type
type p_w2 from picture within win_xtgl_main
end type
type st_dw from statictext within win_xtgl_main
end type
type em_1 from editmask within win_xtgl_main
end type
type st_3 from statictext within win_xtgl_main
end type
type p_w3 from picture within win_xtgl_main
end type
type p_w1 from picture within win_xtgl_main
end type
type cb_8 from commandbutton within win_xtgl_main
end type
type cb_7 from commandbutton within win_xtgl_main
end type
type cb_6 from commandbutton within win_xtgl_main
end type
type cb_5 from commandbutton within win_xtgl_main
end type
type cb_4 from commandbutton within win_xtgl_main
end type
type cb_3 from commandbutton within win_xtgl_main
end type
type cb_2 from commandbutton within win_xtgl_main
end type
type cb_1 from commandbutton within win_xtgl_main
end type
type st_wb1 from statictext within win_xtgl_main
end type
type st_wb2 from statictext within win_xtgl_main
end type
type st_w1 from statictext within win_xtgl_main
end type
type cb_w1 from commandbutton within win_xtgl_main
end type
type st_w2 from statictext within win_xtgl_main
end type
type cb_w2 from commandbutton within win_xtgl_main
end type
type st_wb3 from statictext within win_xtgl_main
end type
type st_w3 from statictext within win_xtgl_main
end type
type cb_w3 from commandbutton within win_xtgl_main
end type
type st_1 from statictext within win_xtgl_main
end type
type st_2 from statictext within win_xtgl_main
end type
type p_8 from picture within win_xtgl_main
end type
end forward

shared variables
string ss_choice
window sw_subwin
end variables

global type win_xtgl_main from window
integer x = 5
integer y = 4
integer width = 3675
integer height = 1956
windowtype windowtype = child!
long backcolor = 33552359
st_w4 st_w4
p_w4 p_w4
st_wb4 st_wb4
cb_w4 cb_w4
p_7 p_7
p_6 p_6
p_5 p_5
p_4 p_4
p_3 p_3
p_2 p_2
p_1 p_1
p_w2 p_w2
st_dw st_dw
em_1 em_1
st_3 st_3
p_w3 p_w3
p_w1 p_w1
cb_8 cb_8
cb_7 cb_7
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
st_wb1 st_wb1
st_wb2 st_wb2
st_w1 st_w1
cb_w1 cb_w1
st_w2 st_w2
cb_w2 cb_w2
st_wb3 st_wb3
st_w3 st_w3
cb_w3 cb_w3
st_1 st_1
st_2 st_2
p_8 p_8
end type
global win_xtgl_main win_xtgl_main

event open;commandbutton cb[]
picture p[]
cb[1] = cb_1
cb[2] = cb_2
cb[3] = cb_3
cb[4] = cb_4
cb[5] = cb_5
cb[6] = cb_6
cb[7] = cb_7
cb[8] = cb_8
p[1] = p_1
p[2] = p_2
p[3] = p_3
p[4] = p_4
p[5] = p_5
p[6] = p_6
p[7] = p_7
p[8] = p_8

cb_1.visible = false
cb_2.visible = false
cb_3.visible = false
cb_4.visible = false
cb_5.visible = false
cb_6.visible = false
cb_7.visible = false
cb_8.visible = false
p_1.visible = false
p_2.visible = false
p_3.visible = false
p_4.visible = false
p_5.visible = false
p_6.visible = false
p_7.visible = false
p_8.visible = false

gs_ml = 'c:\jyoa\'
p_w1.picturename = gs_ml + 'p101.bmp'
p_w2.picturename = gs_ml + 'p102.bmp'
p_w3.picturename = gs_ml + 'exit.bmp'
p_w4.picturename = gs_ml + 'p104.bmp'

p_1.picturename = gs_ml + 'p1.bmp'
p_2.picturename = gs_ml + 'p2.bmp'
p_3.picturename = gs_ml + 'p3.bmp'
p_4.picturename = gs_ml + 'p4.bmp'
p_5.picturename = gs_ml + 'p5.bmp'
p_6.picturename = gs_ml + 'p6.bmp'
p_7.picturename = gs_ml + 'p7.bmp'
p_8.picturename = gs_ml + 'p8.bmp'

st_dw.text = gs_jydw
em_1.text=string(date(fun_datetime('date')),'yyyyÄêmmÔÂddÈÕ')

// ´°¿Ú±êÌâ
   win_all.title = 'ÏµÍ³¹ÜÀí' + ' ------ ' &
	               + trim(gs_deptname) + '(' + trim(gs_staffname) + ')'
//

end event

on win_xtgl_main.create
this.st_w4=create st_w4
this.p_w4=create p_w4
this.st_wb4=create st_wb4
this.cb_w4=create cb_w4
this.p_7=create p_7
this.p_6=create p_6
this.p_5=create p_5
this.p_4=create p_4
this.p_3=create p_3
this.p_2=create p_2
this.p_1=create p_1
this.p_w2=create p_w2
this.st_dw=create st_dw
this.em_1=create em_1
this.st_3=create st_3
this.p_w3=create p_w3
this.p_w1=create p_w1
this.cb_8=create cb_8
this.cb_7=create cb_7
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.st_wb1=create st_wb1
this.st_wb2=create st_wb2
this.st_w1=create st_w1
this.cb_w1=create cb_w1
this.st_w2=create st_w2
this.cb_w2=create cb_w2
this.st_wb3=create st_wb3
this.st_w3=create st_w3
this.cb_w3=create cb_w3
this.st_1=create st_1
this.st_2=create st_2
this.p_8=create p_8
this.Control[]={this.st_w4,&
this.p_w4,&
this.st_wb4,&
this.cb_w4,&
this.p_7,&
this.p_6,&
this.p_5,&
this.p_4,&
this.p_3,&
this.p_2,&
this.p_1,&
this.p_w2,&
this.st_dw,&
this.em_1,&
this.st_3,&
this.p_w3,&
this.p_w1,&
this.cb_8,&
this.cb_7,&
this.cb_6,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.cb_1,&
this.st_wb1,&
this.st_wb2,&
this.st_w1,&
this.cb_w1,&
this.st_w2,&
this.cb_w2,&
this.st_wb3,&
this.st_w3,&
this.cb_w3,&
this.st_1,&
this.st_2,&
this.p_8}
end on

on win_xtgl_main.destroy
destroy(this.st_w4)
destroy(this.p_w4)
destroy(this.st_wb4)
destroy(this.cb_w4)
destroy(this.p_7)
destroy(this.p_6)
destroy(this.p_5)
destroy(this.p_4)
destroy(this.p_3)
destroy(this.p_2)
destroy(this.p_1)
destroy(this.p_w2)
destroy(this.st_dw)
destroy(this.em_1)
destroy(this.st_3)
destroy(this.p_w3)
destroy(this.p_w1)
destroy(this.cb_8)
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.st_wb1)
destroy(this.st_wb2)
destroy(this.st_w1)
destroy(this.cb_w1)
destroy(this.st_w2)
destroy(this.cb_w2)
destroy(this.st_wb3)
destroy(this.st_w3)
destroy(this.cb_w3)
destroy(this.st_1)
destroy(this.st_2)
destroy(this.p_8)
end on

type st_w4 from statictext within win_xtgl_main
boolean visible = false
integer x = 1193
integer y = 864
integer width = 549
integer height = 136
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 128
long backcolor = 12639424
boolean enabled = false
string text = "¾­·Ñ¹ÜÀí"
alignment alignment = center!
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

event clicked;triggerevent(st_wb4,clicked!) 

end event

type p_w4 from picture within win_xtgl_main
boolean visible = false
integer x = 1010
integer y = 872
integer width = 151
integer height = 124
boolean focusrectangle = false
end type

event clicked;triggerevent(st_wb4,clicked!) 
end event

type st_wb4 from statictext within win_xtgl_main
boolean visible = false
integer x = 1193
integer y = 864
integer width = 549
integer height = 136
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
boolean enabled = false
string text = "¾­·Ñ¹ÜÀí"
alignment alignment = center!
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

event clicked;//long i 
//
//commandbutton cb[]
//picture p[]
//cb[1] = cb_1
//cb[2] = cb_2
//cb[3] = cb_3
//cb[4] = cb_4
//cb[5] = cb_5
//cb[6] = cb_6
//cb[7] = cb_7
//cb[8] = cb_8
//p[1] = p_1
//p[2] = p_2
//p[3] = p_3
//p[4] = p_4
//p[5] = p_5
//p[6] = p_6
//p[7] = p_7
//p[8] = p_8
//
//st_w1.visible = false
//st_w2.visible = false
//st_w3.visible = false
//st_w4.visible = true
//
//st_wb1.visible = true
//st_wb2.visible = true
//st_wb3.visible = true
//st_wb4.visible = false
// i = 0
//   i = i + 1
//	   cb[i].visible = true
//      p[i].visible = true
//	   cb[i].text = '        ÉóÅú¼¶±ð'
//	i = i + 1
//	   cb[i].visible = true
//      p[i].visible = true
//	   cb[i].text = '        ÈËÔ±ÉèÖÃ'
////   i = i + 1
////      cb[i].visible = true
////      p[i].visible = true
////	   cb[i].text = '        ¼ìÑéÀà±ð'
////	i = i + 1
////      cb[i].visible = true
////      p[i].visible = true
////	   cb[i].text = '        Ã÷Ï¸ÏîÄ¿'		
////	i = i + 1
////      cb[i].visible = true
////      p[i].visible = true
////	   cb[i].text = '        ¹«ÓÃÐÅÏ¢'
////	i = i + 1
////      cb[i].visible = true
////      p[i].visible = true
////	   cb[i].text = '        ¼ìÑé½áÂÛ'
//	 do while i + 1 <= 8
//      i = i + 1
//       cb[i].visible = false
//       p[i].visible = false
//      loop 
//
//
//
//win_all.title = 'ÏµÍ³¹ÜÀí' + "|" + trim(this.text) + ' ------ ' &
//	               + trim(gs_deptname) + '(' + trim(gs_staffname) + ')'
end event

type cb_w4 from commandbutton within win_xtgl_main
boolean visible = false
integer x = 951
integer y = 860
integer width = 795
integer height = 148
integer taborder = 11
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "         ¾­·Ñ¹ÜÀí"
end type

event clicked;triggerevent(st_wb4,clicked!) 
end event

type p_7 from picture within win_xtgl_main
event clicked pbm_bnclicked
integer x = 2190
integer y = 1372
integer width = 146
integer height = 128
boolean focusrectangle = false
end type

event clicked;fun_getopenwin(trim(cb_7.text))

end event

type p_6 from picture within win_xtgl_main
event clicked pbm_bnclicked
integer x = 2190
integer y = 1228
integer width = 146
integer height = 128
boolean focusrectangle = false
end type

event clicked;fun_getopenwin(trim(cb_6.text))

end event

type p_5 from picture within win_xtgl_main
event clicked pbm_bnclicked
integer x = 2190
integer y = 1084
integer width = 146
integer height = 128
boolean focusrectangle = false
end type

event clicked;fun_getopenwin(trim(cb_5.text))

end event

type p_4 from picture within win_xtgl_main
event clicked pbm_bnclicked
integer x = 2190
integer y = 944
integer width = 146
integer height = 116
boolean focusrectangle = false
end type

event clicked;fun_getopenwin(trim(cb_4.text))

end event

type p_3 from picture within win_xtgl_main
event clicked pbm_bnclicked
integer x = 2190
integer y = 796
integer width = 146
integer height = 120
boolean focusrectangle = false
end type

event clicked;fun_getopenwin(trim(cb_3.text))

end event

type p_2 from picture within win_xtgl_main
event clicked pbm_bnclicked
integer x = 2190
integer y = 648
integer width = 146
integer height = 128
boolean focusrectangle = false
end type

event clicked;fun_getopenwin(trim(cb_2.text))

end event

type p_1 from picture within win_xtgl_main
event clicked pbm_bnclicked
integer x = 2190
integer y = 508
integer width = 146
integer height = 120
boolean focusrectangle = false
end type

event clicked;fun_getopenwin(trim(cb_1.text))

end event

type p_w2 from picture within win_xtgl_main
event clicked pbm_bnclicked
integer x = 1010
integer y = 724
integer width = 146
integer height = 128
boolean focusrectangle = false
end type

event clicked;triggerevent(st_wb2,clicked!) 
end event

type st_dw from statictext within win_xtgl_main
integer x = 704
integer y = 1764
integer width = 1463
integer height = 100
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 80269528
boolean enabled = false
string text = "ÁÉÄþÊ¡Õ¹ÀÀÃ³Ò×¼¯ÍÅ¹«Ë¾"
alignment alignment = center!
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type em_1 from editmask within win_xtgl_main
integer x = 2464
integer y = 1756
integer width = 750
integer height = 112
integer taborder = 40
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
boolean enabled = false
alignment alignment = center!
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datemask!
string mask = "yyyyÄêmmÔÂddÈÕ"
string displaydata = ""
end type

type st_3 from statictext within win_xtgl_main
integer x = 681
integer y = 1748
integer width = 2546
integer height = 136
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
boolean enabled = false
boolean border = true
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

type p_w3 from picture within win_xtgl_main
integer x = 1006
integer y = 948
integer width = 155
integer height = 128
boolean focusrectangle = false
end type

event clicked;triggerevent(st_wb3,clicked!) 
end event

type p_w1 from picture within win_xtgl_main
integer x = 1010
integer y = 512
integer width = 146
integer height = 128
boolean focusrectangle = false
end type

event clicked;triggerevent(st_wb1,clicked!) 

end event

type cb_8 from commandbutton within win_xtgl_main
integer x = 2162
integer y = 1512
integer width = 859
integer height = 136
integer taborder = 30
integer textsize = -14
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "          ²¿ÃÅ´úÂë "
end type

event clicked;long teturn_str
teturn_str = fun_getopenwin(trim(this.text))
if teturn_str = 1 then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÄúÏÈÔÚ¼ìÑé¹ÜÀí ------ ¹«ÓÃÐÅÏ¢Ä£¿éÉý¼¶Êý¾Ý¿â£¡')
	return
end if

end event

type cb_7 from commandbutton within win_xtgl_main
integer x = 2162
integer y = 1368
integer width = 859
integer height = 136
integer taborder = 20
integer textsize = -14
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "          ÍË³öÏµÍ³ "
end type

event clicked;long teturn_str
teturn_str = fun_getopenwin(trim(this.text))
if teturn_str = 1 then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÄúÏÈÔÚ¼ìÑé¹ÜÀí ------ ¹«ÓÃÐÅÏ¢Ä£¿éÉý¼¶Êý¾Ý¿â£¡')
	return
end if
end event

type cb_6 from commandbutton within win_xtgl_main
integer x = 2162
integer y = 1224
integer width = 859
integer height = 136
integer taborder = 100
integer textsize = -14
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "         ÈËÔ±´úÂë "
end type

event clicked;long teturn_str
teturn_str = fun_getopenwin(trim(this.text))
if teturn_str = 1 then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÄúÏÈÔÚ¼ìÑé¹ÜÀí ------ ¹«ÓÃÐÅÏ¢Ä£¿éÉý¼¶Êý¾Ý¿â£¡')
	return
end if
end event

type cb_5 from commandbutton within win_xtgl_main
integer x = 2162
integer y = 1080
integer width = 859
integer height = 136
integer taborder = 90
integer textsize = -14
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "          ¿ÚÁîÎ¬»¤ "
end type

event clicked;long teturn_str
teturn_str = fun_getopenwin(trim(this.text))
if teturn_str = 1 then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÄúÏÈÔÚ¼ìÑé¹ÜÀí ------ ¹«ÓÃÐÅÏ¢Ä£¿éÉý¼¶Êý¾Ý¿â£¡')
	return
end if
end event

type cb_4 from commandbutton within win_xtgl_main
integer x = 2162
integer y = 936
integer width = 859
integer height = 136
integer taborder = 10
integer textsize = -14
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "          Æ½"
end type

event clicked;long teturn_str
teturn_str = fun_getopenwin(trim(this.text))
if teturn_str = 1 then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÄúÏÈÔÚ¼ìÑé¹ÜÀí ------ ¹«ÓÃÐÅÏ¢Ä£¿éÉý¼¶Êý¾Ý¿â£¡')
	return
end if
end event

type cb_3 from commandbutton within win_xtgl_main
integer x = 2162
integer y = 792
integer width = 859
integer height = 136
integer taborder = 50
integer textsize = -14
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "          ²¿ÃÅ´úÂë "
end type

event clicked;long teturn_str
teturn_str = fun_getopenwin(trim(this.text))
if teturn_str = 1 then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÄúÏÈÔÚ¼ìÑé¹ÜÀí ------ ¹«ÓÃÐÅÏ¢Ä£¿éÉý¼¶Êý¾Ý¿â£¡')
	return
end if
end event

type cb_2 from commandbutton within win_xtgl_main
integer x = 2162
integer y = 648
integer width = 859
integer height = 136
integer taborder = 120
integer textsize = -14
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "         ÈËÔ± "
end type

event clicked;long teturn_str
teturn_str = fun_getopenwin(trim(this.text))
if teturn_str = 1 then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÄúÏÈÔÚ¼ìÑé¹ÜÀí ------ ¹«ÓÃÐÅÏ¢Ä£¿éÉý¼¶Êý¾Ý¿â£¡')
	return
end if
end event

type cb_1 from commandbutton within win_xtgl_main
integer x = 2162
integer y = 504
integer width = 859
integer height = 136
integer taborder = 80
integer textsize = -14
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "      Ô¤Ìá·Ñ¸£Àû·Ñ"
end type

event clicked;long teturn_str
teturn_str = fun_getopenwin(trim(this.text))
if teturn_str = 1 then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÄúÏÈÔÚ¼ìÑé¹ÜÀí ------ ¹«ÓÃÐÅÏ¢Ä£¿éÉý¼¶Êý¾Ý¿â£¡')
	return
end if

end event

type st_wb1 from statictext within win_xtgl_main
integer x = 1193
integer y = 512
integer width = 549
integer height = 136
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
string text = "  ¹«ÓÃ¹ÜÀí"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

event clicked;long i 
string zwmark 
commandbutton cb[]
picture p[]
cb[1] = cb_1
cb[2] = cb_2
cb[3] = cb_3
cb[4] = cb_4
cb[5] = cb_5
cb[6] = cb_6
cb[7] = cb_7
cb[8] = cb_8
p[1] = p_1
p[2] = p_2
p[3] = p_3
p[4] = p_4
p[5] = p_5
p[6] = p_6
p[7] = p_7
p[8] = p_8

st_w1.visible = true
st_w2.visible = false
st_w3.visible = false


st_wb1.visible = false
st_wb2.visible = true
st_wb3.visible = true


i = 0
i = i + 1
	cb[i].visible = true
	p[i].visible = true
	cb[i].text = '        ¿ÚÁîÎ¬»¤'
i = i + 1
	cb[i].visible = true
	p[i].visible = true
	cb[i].text = '        ²¿ÃÅ´úÂë'
i = i + 1
	cb[i].visible = true
	p[i].visible = true
	cb[i].text = '        ÈËÔ±´úÂë'
i = i + 1
	cb[i].visible = true
	p[i].visible = true
	cb[i].text = '        Ö÷¹Ü²¿ÃÅ'
i = i + 1
	cb[i].visible = true
	p[i].visible = true
	cb[i].text = '        ³£ÓÃÉè±¸'
	

do while i + 1 <= 8
i = i + 1
 cb[i].visible = false
 p[i].visible = false
loop 



win_all.title = 'ÏµÍ³¹ÜÀí' + "|" + trim(this.text) + ' ------ ' &
	               + trim(gs_deptname) + '(' + trim(gs_staffname) + ')'

end event

type st_wb2 from statictext within win_xtgl_main
event clicked pbm_bnclicked
integer x = 1193
integer y = 724
integer width = 549
integer height = 128
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
string text = "  ¼ìÑé¹ÜÀí"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

event clicked;long i 

commandbutton cb[]
picture p[]
cb[1] = cb_1
cb[2] = cb_2
cb[3] = cb_3
cb[4] = cb_4
cb[5] = cb_5
cb[6] = cb_6
cb[7] = cb_7
cb[8] = cb_8
p[1] = p_1
p[2] = p_2
p[3] = p_3
p[4] = p_4
p[5] = p_5
p[6] = p_6
p[7] = p_7
p[8] = p_8

st_w1.visible = false
st_w2.visible = true
st_w3.visible = false

st_wb1.visible = true
st_wb2.visible = false
st_wb3.visible = true

i = 0
//i = i + 1
//cb[i].visible = true
//p[i].visible = true
//cb[i].text = '        ÉóºË¹ý³Ì'

i = i + 1
	cb[i].visible = true
	p[i].visible = true
	cb[i].text = '        ±¨¸æÀà±ð'		
i = i + 1
	cb[i].visible = true
	p[i].visible = true
	cb[i].text = '        Éè±¸Àà±ð'
i = i + 1
	cb[i].visible = true
	p[i].visible = true
	cb[i].text = '        ¼ìÑéÀà±ð'
i = i + 1
	cb[i].visible = true
	p[i].visible = true
	cb[i].text = '        Ã÷Ï¸ÏîÄ¿'		
i = i + 1
	cb[i].visible = true
	p[i].visible = true
	cb[i].text = '        ¹«ÓÃÐÅÏ¢'
i = i + 1
	cb[i].visible = true
	p[i].visible = true
	
	fun_a_jydw_add()
	cb[i].text = '        ¼ìÑé½áÂÛ'
 do while i + 1 <= 8
	i = i + 1
	 cb[i].visible = false
	 p[i].visible = false
	loop 



win_all.title = 'ÏµÍ³¹ÜÀí' + "|" + trim(this.text) + ' ------ ' &
	               + trim(gs_deptname) + '(' + trim(gs_staffname) + ')'
end event

type st_w1 from statictext within win_xtgl_main
integer x = 1193
integer y = 512
integer width = 549
integer height = 136
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 128
long backcolor = 12639424
string text = "  ¹«ÓÃ¹ÜÀí"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type cb_w1 from commandbutton within win_xtgl_main
integer x = 955
integer y = 508
integer width = 795
integer height = 148
integer taborder = 60
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "         ¹«ÓÃ¹ÜÀí"
end type

event clicked;triggerevent(st_wb1,clicked!) 

end event

type st_w2 from statictext within win_xtgl_main
integer x = 1193
integer y = 724
integer width = 549
integer height = 128
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 128
long backcolor = 12639424
string text = "  ¼ìÑé¹ÜÀí"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type cb_w2 from commandbutton within win_xtgl_main
event clicked pbm_bnclicked
integer x = 955
integer y = 720
integer width = 795
integer height = 140
integer taborder = 70
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "          ¼ìÑé¹ÜÀí"
end type

event clicked;triggerevent(st_wb2,clicked!) 
end event

type st_wb3 from statictext within win_xtgl_main
integer x = 1189
integer y = 944
integer width = 549
integer height = 136
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
string text = "  ÍË³öÏµÍ³ "
alignment alignment = center!
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

event clicked;st_w1.visible = false
st_w2.visible = false
st_w3.visible = true
//st_w4.visible = false

st_wb1.visible = true
st_wb2.visible = true
st_wb3.visible = false
//st_wb4.visible = true
 if messagebox('ÏµÍ³ÌáÊ¾','ÇëÈ·ÈÏÊÇ·ñÍË³öÏµÍ³£¿',exclamation!,YesNo!,2) = 1 then
   opensheet(win_sys_end,win_all,8,layered!)
 end if

end event

type st_w3 from statictext within win_xtgl_main
integer x = 1189
integer y = 944
integer width = 549
integer height = 136
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 128
long backcolor = 12639424
string text = "  ÍË³öÏµÍ³"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

event clicked;triggerevent(st_wb3,clicked!) 
end event

type cb_w3 from commandbutton within win_xtgl_main
integer x = 946
integer y = 940
integer width = 795
integer height = 148
integer taborder = 110
integer textsize = -16
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "          ÍË³öÏµÍ³ "
end type

event clicked;triggerevent(st_wb3,clicked!) 
end event

type st_1 from statictext within win_xtgl_main
integer x = 686
integer y = 248
integer width = 1230
integer height = 1492
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 8421376
boolean enabled = false
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type st_2 from statictext within win_xtgl_main
integer x = 1998
integer y = 248
integer width = 1230
integer height = 1492
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 8421376
boolean enabled = false
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type p_8 from picture within win_xtgl_main
event clicked pbm_bnclicked
integer x = 2190
integer y = 1516
integer width = 146
integer height = 128
boolean bringtotop = true
boolean focusrectangle = false
end type

event clicked;fun_getopenwin(trim(cb_8.text))

end event

