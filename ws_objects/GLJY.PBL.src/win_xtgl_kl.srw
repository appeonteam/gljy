$PBExportHeader$win_xtgl_kl.srw
forward
global type win_xtgl_kl from window
end type
type p_1 from picture within win_xtgl_kl
end type
type st_date from statictext within win_xtgl_kl
end type
type st_xt from statictext within win_xtgl_kl
end type
type st_title from statictext within win_xtgl_kl
end type
type cbx_pass from checkbox within win_xtgl_kl
end type
type cbx_code from checkbox within win_xtgl_kl
end type
type sle_newcode from singlelineedit within win_xtgl_kl
end type
type sle_oldcode from singlelineedit within win_xtgl_kl
end type
type st_8 from statictext within win_xtgl_kl
end type
type st_7 from statictext within win_xtgl_kl
end type
type st_6 from statictext within win_xtgl_kl
end type
type sle_pass2 from singlelineedit within win_xtgl_kl
end type
type st_5 from statictext within win_xtgl_kl
end type
type sle_pass1 from singlelineedit within win_xtgl_kl
end type
type cb_2 from commandbutton within win_xtgl_kl
end type
type cb_1 from commandbutton within win_xtgl_kl
end type
type gb_2 from groupbox within win_xtgl_kl
end type
type gb_1 from groupbox within win_xtgl_kl
end type
type st_space from statictext within win_xtgl_kl
end type
end forward

global type win_xtgl_kl from window
integer x = 5
integer y = 4
integer width = 3666
integer height = 2412
windowtype windowtype = child!
long backcolor = 33552359
p_1 p_1
st_date st_date
st_xt st_xt
st_title st_title
cbx_pass cbx_pass
cbx_code cbx_code
sle_newcode sle_newcode
sle_oldcode sle_oldcode
st_8 st_8
st_7 st_7
st_6 st_6
sle_pass2 sle_pass2
st_5 st_5
sle_pass1 sle_pass1
cb_2 cb_2
cb_1 cb_1
gb_2 gb_2
gb_1 gb_1
st_space st_space
end type
global win_xtgl_kl win_xtgl_kl

on win_xtgl_kl.create
this.p_1=create p_1
this.st_date=create st_date
this.st_xt=create st_xt
this.st_title=create st_title
this.cbx_pass=create cbx_pass
this.cbx_code=create cbx_code
this.sle_newcode=create sle_newcode
this.sle_oldcode=create sle_oldcode
this.st_8=create st_8
this.st_7=create st_7
this.st_6=create st_6
this.sle_pass2=create sle_pass2
this.st_5=create st_5
this.sle_pass1=create sle_pass1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.gb_2=create gb_2
this.gb_1=create gb_1
this.st_space=create st_space
this.Control[]={this.p_1,&
this.st_date,&
this.st_xt,&
this.st_title,&
this.cbx_pass,&
this.cbx_code,&
this.sle_newcode,&
this.sle_oldcode,&
this.st_8,&
this.st_7,&
this.st_6,&
this.sle_pass2,&
this.st_5,&
this.sle_pass1,&
this.cb_2,&
this.cb_1,&
this.gb_2,&
this.gb_1,&
this.st_space}
end on

on win_xtgl_kl.destroy
destroy(this.p_1)
destroy(this.st_date)
destroy(this.st_xt)
destroy(this.st_title)
destroy(this.cbx_pass)
destroy(this.cbx_code)
destroy(this.sle_newcode)
destroy(this.sle_oldcode)
destroy(this.st_8)
destroy(this.st_7)
destroy(this.st_6)
destroy(this.sle_pass2)
destroy(this.st_5)
destroy(this.sle_pass1)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.gb_2)
destroy(this.gb_1)
destroy(this.st_space)
end on

event open;st_xt.text = gs_jydw
st_date.text=string(date(fun_datetime('date')),'yyyyÄêmmÔÂddÈÕ')
select rydm into :sle_oldcode.text from a_rycode where ryid = :gs_staffno;
p_1.picturename = gs_ml + 'kl.bmp'




end event

type p_1 from picture within win_xtgl_kl
integer x = 398
integer y = 448
integer width = 1371
integer height = 1408
string picturename = "c:\jyoa\kl.bmp"
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type st_date from statictext within win_xtgl_kl
integer x = 1989
integer y = 296
integer width = 1189
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean enabled = false
string text = "1999Äê1ÔÂ20ÈÕ"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_xt from statictext within win_xtgl_kl
integer x = 1801
integer y = 196
integer width = 1381
integer height = 76
integer textsize = -14
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean enabled = false
string text = "ÆóÒµÖÇÄÜ»¯¹ÜÀíÏµÍ³"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_title from statictext within win_xtgl_kl
integer x = 485
integer y = 196
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
string text = "ÉèÖÃ´úÂëºÍ¿ÚÁî"
alignment alignment = center!
boolean focusrectangle = false
end type

type cbx_pass from checkbox within win_xtgl_kl
integer x = 1870
integer y = 1008
integer width = 480
integer height = 76
integer taborder = 30
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
string text = "ÐÞ¸Ä¿ÚÁî"
end type

event clicked;if cbx_pass.checked then
	sle_pass1.enabled = true
	sle_pass2.enabled = true
else
	sle_pass1.enabled = false
	sle_pass2.enabled = false
end if	

end event

type cbx_code from checkbox within win_xtgl_kl
integer x = 1879
integer y = 536
integer width = 480
integer height = 76
integer taborder = 10
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
string text = "ÐÞ¸Ä´úÂë "
end type

event clicked;if cbx_code.checked then
	sle_newcode.enabled = true
else
	sle_newcode.enabled = false
end if	

end event

type sle_newcode from singlelineedit within win_xtgl_kl
integer x = 2235
integer y = 796
integer width = 818
integer height = 92
integer taborder = 20
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean enabled = false
boolean autohscroll = false
borderstyle borderstyle = stylelowered!
end type

type sle_oldcode from singlelineedit within win_xtgl_kl
integer x = 2235
integer y = 684
integer width = 818
integer height = 92
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean autohscroll = false
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_8 from statictext within win_xtgl_kl
integer x = 1952
integer y = 692
integer width = 274
integer height = 72
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "¾É´úÂë"
boolean focusrectangle = false
end type

type st_7 from statictext within win_xtgl_kl
integer x = 1952
integer y = 808
integer width = 274
integer height = 72
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "ÐÂ´úÂë"
boolean focusrectangle = false
end type

type st_6 from statictext within win_xtgl_kl
integer x = 1947
integer y = 1276
integer width = 274
integer height = 72
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "ÔÙÊäÈë"
boolean focusrectangle = false
end type

type sle_pass2 from singlelineedit within win_xtgl_kl
integer x = 2235
integer y = 1272
integer width = 818
integer height = 92
integer taborder = 50
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 8388608
long backcolor = 16777215
boolean enabled = false
boolean autohscroll = false
boolean password = true
borderstyle borderstyle = stylelowered!
end type

type st_5 from statictext within win_xtgl_kl
integer x = 1943
integer y = 1176
integer width = 274
integer height = 72
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "ÐÂ¿ÚÁî"
boolean focusrectangle = false
end type

type sle_pass1 from singlelineedit within win_xtgl_kl
integer x = 2235
integer y = 1160
integer width = 818
integer height = 92
integer taborder = 40
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 8388608
long backcolor = 16777215
boolean enabled = false
boolean autohscroll = false
boolean password = true
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within win_xtgl_kl
integer x = 2587
integer y = 1616
integer width = 361
integer height = 128
integer taborder = 70
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË³ö"
boolean cancel = true
end type

event clicked;close(win_xtgl_kl)
end event

type cb_1 from commandbutton within win_xtgl_kl
integer x = 1966
integer y = 1616
integer width = 361
integer height = 128
integer taborder = 60
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È·ÈÏ"
boolean default = true
end type

event clicked;string dm0,sx0,ps1,ps2

if cbx_code.checked then
   dm0 = trim(sle_newcode.text)
   if len(dm0) = 0 then
	   messagebox('ÏµÍ³ÌáÊ¾','ÇëÊäÈë´úÂë£¡')
   	return 
   end if	
	if gs_connect = 'true' then
		string ls_jydw
		connect using gt_sqlry;
			select rydm into :sx0 from a_ry_total where rydm = :dm0 and ryid <> :gs_staffno using gt_sqlry;
			if gt_sqlry.sqlcode = 0 then
				messagebox('ÏµÍ³ÌáÊ¾','¸Ã´úÂëÒÑ±»ËûÈËÕ¼ÓÃ!,Çë¸ü»»´úÂë£¡')
				return
			end if	
			
//			select jydw into :ls_jydw from a_ry_total where rydm like :sl_code and password like :sl_pass;
			update a_ry_total set rydm = :dm0 where jydw = :gs_jydw and ryid = :gs_staffno using gt_sqlry;
			update a_rycode set rydm = :dm0 where ryid = :gs_staffno;
			commit;
			commit using gt_sqlry;
		disconnect using gt_sqlry;
	else
		select rydm into :sx0 from a_rycode where rydm = :dm0 and ryid <> :gs_staffno ; 
		if sqlca.sqlcode = 0 then
			messagebox('ÏµÍ³ÌáÊ¾','¸Ã´úÂëÒÑ±»ËûÈËÕ¼ÓÃ!,Çë¸ü»»´úÂë£¡')
			return
		end if	
		
		update a_rycode set rydm = :dm0 where ryid = :gs_staffno;
		commit;
	end if
end if	

if cbx_pass.checked then
   ps1 = trim(sle_pass1.text)
   ps2 = trim(sle_pass2.text)
   if len(ps1) = 0 or len(ps2) = 0 then
	   messagebox('ÏµÍ³ÌáÊ¾','ÇëÊäÈë¿ÚÁî£¡')
   	return 
   end if	
   if ps1 <> ps2 then
	   messagebox('ÏµÍ³ÌáÊ¾','Á½´ÎÊäÈë¿ÚÁîÓ¦¸ÃÒ»ÖÂ£¡')
   	return 
   end if
	long ll_expass
	select count(*) into :ll_expass from a_rycode where mark like '%';
//	if sqlca.sqlcode = 0 then
//		//**Modify By FFF ** TransPass **//
//		ps1 = Fun_TransPass(ps1)
//		//**Modify End **//
//	end if
	if gs_connect = 'true' then
		connect using gt_sqlry;
			update a_ry_total set password = :ps1 where jydw = :gs_jydw and ryid = :gs_staffno using gt_sqlry;
			commit using gt_sqlry;
		disconnect using gt_sqlry;
	end if
   update a_rycode set rypass = :ps1 where ryid = :gs_staffno;
   commit;
end if

close(win_xtgl_kl)
end event

type gb_2 from groupbox within win_xtgl_kl
integer x = 1865
integer y = 1080
integer width = 1289
integer height = 324
integer taborder = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
end type

type gb_1 from groupbox within win_xtgl_kl
integer x = 1865
integer y = 612
integer width = 1289
integer height = 324
integer taborder = 90
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
end type

type st_space from statictext within win_xtgl_kl
integer x = 402
integer y = 136
integer width = 2784
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

