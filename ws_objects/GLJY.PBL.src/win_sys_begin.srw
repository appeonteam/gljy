$PBExportHeader$win_sys_begin.srw
$PBExportComments$¿ªÊ¼´°¿Ú
forward
global type win_sys_begin from window
end type
type st_code from statictext within win_sys_begin
end type
type st_pass from statictext within win_sys_begin
end type
type sle_code from singlelineedit within win_sys_begin
end type
type sle_pass from singlelineedit within win_sys_begin
end type
type cb_done from commandbutton within win_sys_begin
end type
type cb_exit from commandbutton within win_sys_begin
end type
type st_back from statictext within win_sys_begin
end type
type p_1 from picture within win_sys_begin
end type
end forward

global type win_sys_begin from window
integer x = 5
integer y = 4
integer width = 3657
integer height = 2448
windowtype windowtype = child!
st_code st_code
st_pass st_pass
sle_code sle_code
sle_pass sle_pass
cb_done cb_done
cb_exit cb_exit
st_back st_back
p_1 p_1
end type
global win_sys_begin win_sys_begin

event open;
p_1.visible = true
gb_schedule = false
//menu_main.m_warn.hide()
menu_main.m_help.hide()
menu_main.m_exit.hide()
st_back.visible = false
st_code.visible = false
st_pass.visible = false
//sle_code.visible = false
//sle_pass.visible = false
cb_done.visible = false
cb_exit.visible = false

timer(1)

end event

event timer;if not gb_schedule then
   gb_schedule = true
   st_back.visible = true
   st_code.visible = true
   st_pass.visible = true
   sle_code.visible = true
   sle_pass.visible = true
   
	cb_done.visible = true
   cb_exit.visible = true
	sle_code.setfocus()
	timer(0)
end if

end event

event clicked;if not gb_schedule then
   gb_schedule = true
   st_back.visible = true
   st_code.visible = true
   st_pass.visible = true
   sle_code.visible = true
   sle_pass.visible = true
   cb_done.visible = true
   cb_exit.visible = true
	sle_code.setfocus()
	timer(0)
end if

end event

on win_sys_begin.create
this.st_code=create st_code
this.st_pass=create st_pass
this.sle_code=create sle_code
this.sle_pass=create sle_pass
this.cb_done=create cb_done
this.cb_exit=create cb_exit
this.st_back=create st_back
this.p_1=create p_1
this.Control[]={this.st_code,&
this.st_pass,&
this.sle_code,&
this.sle_pass,&
this.cb_done,&
this.cb_exit,&
this.st_back,&
this.p_1}
end on

on win_sys_begin.destroy
destroy(this.st_code)
destroy(this.st_pass)
destroy(this.sle_code)
destroy(this.sle_pass)
destroy(this.cb_done)
destroy(this.cb_exit)
destroy(this.st_back)
destroy(this.p_1)
end on

event key;if not gb_schedule then
   gb_schedule = true
   st_back.visible = true
   st_code.visible = true
   st_pass.visible = true
   sle_code.visible = true
   sle_pass.visible = true
   cb_done.visible = true
   cb_exit.visible = true
	sle_code.setfocus()
	timer(0)
end if

end event

type st_code from statictext within win_sys_begin
integer x = 2144
integer y = 1532
integer width = 201
integer height = 72
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 15780518
boolean enabled = false
string text = "´úÂë:"
boolean focusrectangle = false
end type

type st_pass from statictext within win_sys_begin
integer x = 2139
integer y = 1656
integer width = 219
integer height = 72
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 15780518
boolean enabled = false
string text = "¿ÚÁî:"
boolean focusrectangle = false
end type

type sle_code from singlelineedit within win_sys_begin
event key pbm_custom01
integer x = 2350
integer y = 1516
integer width = 585
integer height = 100
integer taborder = 10
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 8388608
long backcolor = 16777215
boolean autohscroll = false
borderstyle borderstyle = stylelowered!
end type

event modified;if (sle_pass.text='') then 
	setfocus(sle_pass)
	
end if 
if(sle_code.text<>''and sle_pass.text<>'')then
	setfocus(cb_done)
end if
end event

type sle_pass from singlelineedit within win_sys_begin
integer x = 2354
integer y = 1640
integer width = 585
integer height = 100
integer taborder = 20
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 8388608
long backcolor = 16777215
boolean autohscroll = false
boolean password = true
borderstyle borderstyle = stylelowered!
end type

event modified;if (sle_code.text='') then 
	messagebox("ÏµÍ³ÌáÊ¾","´úÂë²»ÄÜÎª¿Õ")
	setfocus(sle_code)
	end if 
if(sle_code.text<>''and sle_pass.text<>'')then
	setfocus(cb_done)
end if
end event

type cb_done from commandbutton within win_sys_begin
event clicked pbm_bnclicked
integer x = 2149
integer y = 1788
integer width = 338
integer height = 116
integer taborder = 30
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È·ÈÏ"
end type

event clicked;
string sl_code
string sl_pass
long ll_expass

sl_code = trim(sle_code.text) 
sl_pass = trim(sle_pass.text) 
IF gs_connect = 'true' THEN
		select count(*) into :ll_expass from a_ry_total where rydm like :sl_code and password like :sl_pass and ryid like '1111';
		if ll_expass <> 1 then
			messagebox("ÏµÍ³ÌáÊ¾!","ÄúÃ»ÓÐÏµÍ³²Ù×÷È¨Àû!")
			return
		else
		string ls_jydw
		string startupfile = 'install.ini'
		select jydw into :ls_jydw from a_ry_total where rydm like :sl_code and password like :sl_pass;
				disconnect using sqlca;
				sqlca.database    = ProfileString (startupfile, "server", ls_jydw,       "")
				sqlca.servername  = ProfileString (startupfile, "server", "servername", "")
				sqlca.dbms = "MSS (Msoft) SQL Server 6.0"	
				sqlca.logid       = "djylrq"
				sqlca.logpass     = "djylrq123"
				sqlca.userid      = "djylrq"
				sqlca.dbpass      = "djylrq"
				SQLCA.DBParm = "CacheName='" + ProfileString (startupfile, "server", ls_jydw + 'appeon',       "") + "'"
				sqlca.AutoCommit	= true
				connect using sqlca;
				gt_sqlry = Create Transaction
				gt_sqlry.database    = "login"
				gt_sqlry.servername  = ProfileString (startupfile, "server", "servername", "")
				gt_sqlry.dbms = "MSS (Msoft) SQL Server 6.0"	
				gt_sqlry.logid       = "djylrq"
				gt_sqlry.logpass     = "djylrq123"
				gt_sqlry.userid      = "djylrq"
				gt_sqlry.dbpass      = "djylrq"
				gt_sqlry.DBParm = "CacheName='gljy'"
				gt_sqlry.AutoCommit	= true
		end if
END IF
//**Modify By FFF **//**TransPass **//ÅÐ¶Ï³õÊ¼ÃÜÂë
		select count(*) into :ll_expass from a_rycode where mark like '%';
		if sqlca.sqlcode = 0 then
			sl_pass = Fun_TransPass(sl_pass)
		end if
		////**Modify End **//
		select ryid,rymc,rybm into :gs_staffno,:gs_staffname,:gs_deptname
		from a_rycode 
		where rydm = :sl_code and rypass = :sl_pass ;

if sqlca.sqlcode = 0 and  gs_staffno = '1111' then
	  //////////////  
	  ///
	  SELECT jydw,zhmark INTO :gs_jydw,:gs_zhmark FROM a_jydw;
	  //
	  ////////////
	  close(win_sys_begin)
	  menu_main.m_help.show()
     menu_main.m_exit.show()
     opensheet(win_xtgl_main,win_all,8,layered!)
else
	if sqlca.sqlcode <> 0 then 
		messagebox("ÏµÍ³ÌáÊ¾","Êý¾Ý¿âÁ¬½ÓÊ§°Ü!")
      setfocus(sle_code)
      sle_pass.text=''
   else
		if gs_staffno <> '1111' then
	     messagebox("ÏµÍ³ÌáÊ¾","¶Ô²»ÆðÄúÃ»ÓÐ³¬¼¶ÓÃ»§È¨ÏÞ£¡")
	     setfocus(sle_code)
        sle_pass.text=''
	   end if
   end if
end if

win_all.title ="ÏµÍ³Î¬»¤" + ' ------ ' &
	               + trim(gs_deptname) + '(' + trim(gs_staffname) + ')'



end event

event getfocus;int i=0 
i=i+1
if i=5 then
	messagebox("¶Ô²»Æð","Äã¾ö²»ÊÇºÏ¸ñµÄÓÃ»§")
	triggerevent(cb_exit,clicked!)
else
  triggerevent(clicked!)
end if

end event

type cb_exit from commandbutton within win_sys_begin
event clicked pbm_bnclicked
integer x = 2592
integer y = 1792
integer width = 338
integer height = 116
integer taborder = 40
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË³ö"
boolean cancel = true
end type

event clicked;opensheet(win_sys_end,win_all,8,layered!)

end event

type st_back from statictext within win_sys_begin
integer x = 2048
integer y = 1456
integer width = 969
integer height = 508
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 15780518
boolean enabled = false
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type p_1 from picture within win_sys_begin
integer width = 3653
integer height = 2448
string picturename = "c:\jyoa\password.bmp"
boolean border = true
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

event clicked;if not gb_schedule then
   gb_schedule = true
   st_back.visible = true
   st_code.visible = true
   st_pass.visible = true
   sle_code.visible = true
   sle_pass.visible = true
   cb_done.visible = true
   cb_exit.visible = true
	sle_code.setfocus()
	timer(0)
end if

end event

