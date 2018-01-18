$PBExportHeader$win_htgl_lc.srw
$PBExportComments$¼ìÑé²¿ÃÅ
forward
global type win_htgl_lc from window
end type
type dw_1 from datawindow within win_htgl_lc
end type
type cb_exit from commandbutton within win_htgl_lc
end type
type cb_save from commandbutton within win_htgl_lc
end type
type st_title from statictext within win_htgl_lc
end type
end forward

global type win_htgl_lc from window
integer x = 978
integer y = 448
integer width = 2153
integer height = 1348
boolean titlebar = true
windowtype windowtype = response!
long backcolor = 81324524
dw_1 dw_1
cb_exit cb_exit
cb_save cb_save
st_title st_title
end type
global win_htgl_lc win_htgl_lc

type variables
string Is_ShAdd,Is_ShJytype
int      Ii_ShNrid
end variables

on win_htgl_lc.create
this.dw_1=create dw_1
this.cb_exit=create cb_exit
this.cb_save=create cb_save
this.st_title=create st_title
this.Control[]={this.dw_1,&
this.cb_exit,&
this.cb_save,&
this.st_title}
end on

on win_htgl_lc.destroy
destroy(this.dw_1)
destroy(this.cb_exit)
destroy(this.cb_save)
destroy(this.st_title)
end on

event open;dw_1.settransobject(sqlca)
dw_1.retrieve(gs_htlb)

end event

type dw_1 from datawindow within win_htgl_lc
integer x = 192
integer y = 152
integer width = 1349
integer height = 972
integer taborder = 10
string title = "none"
string dataobject = "dw_htgl_lc"
boolean livescroll = true
end type

type cb_exit from commandbutton within win_htgl_lc
integer x = 1673
integer y = 1028
integer width = 357
integer height = 100
integer taborder = 10
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È¡Ïû"
end type

event clicked;//if Is_ShAdd = 'ADD' then
	Delete from b_htgl_lc where lb = :gs_htlb;
//end if
close(win_htgl_lc)
end event

type cb_save from commandbutton within win_htgl_lc
integer x = 1673
integer y = 772
integer width = 357
integer height = 100
integer taborder = 20
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È·¶¨"
end type

event clicked;if dw_1.update() = 1 then
		commit;
	else
	 messagebox("ÌáÊ¾!","Êý¾Ý¸üÐÂÊ§°Ü!")
end if 
win_htgl_lc_tz.dw_1.settransobject(sqlca)
win_htgl_lc_tz.dw_1.retrieve(gs_htlb)
close(parent)
end event

type st_title from statictext within win_htgl_lc
integer x = 32
integer y = 24
integer width = 713
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 81324524
boolean enabled = false
string text = "ºÏÍ¬ÉóºË¹ý³ÌÉè¶¨"
boolean focusrectangle = false
end type

