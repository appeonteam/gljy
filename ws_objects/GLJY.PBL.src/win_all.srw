$PBExportHeader$win_all.srw
$PBExportComments$MDI Ö÷½çÃæ
forward
global type win_all from window
end type
type mdi_1 from mdiclient within win_all
end type
end forward

shared variables
long jingyu
end variables

global type win_all from window
integer x = 9
integer y = 4
integer width = 3657
integer height = 2400
boolean titlebar = true
string menuname = "menu_main"
boolean resizable = true
windowtype windowtype = mdihelp!
mdi_1 mdi_1
end type
global win_all win_all

on win_all.create
if this.MenuName = "menu_main" then this.MenuID = create menu_main
this.mdi_1=create mdi_1
this.Control[]={this.mdi_1}
end on

on win_all.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.mdi_1)
end on

event open;if win_800 then fun_windows_position(this)

opensheet(win_sys_begin,win_all,8,layered!)
//menu_main.show()

//Win_all.SetMicroHelp("  ÁÉÄþÐÇ»ð¼ÆËã»úÈí¼þ¹¤³ÌÓÐÏÞ¹«Ë¾  ")
//string classname1
//    run("c:\jyoa\jingyu.exe",maximized!)
//	 timer(0.01)
//    setnull(classname1)
//    jingyu = findwindow(classname1,"ÎÞ±êÌâ - jingyu")
//
//
end event

event resize;///////////This.WindowState = Maximized!

end event

event clicked;//opensheet(win_sys_begin,win_all,8,layered!)
////menu_main.show()
//
//Win_all.SetMicroHelp("  ÁÉÄþÐÇ»ð¼ÆËã»ú¼¼Êõ·¢Õ¹ÓÐÏÞ¹«Ë¾  ")
end event

event key;//opensheet(win_sys_begin,win_all,8,layered!)
////menu_main.show()
//
//Win_all.SetMicroHelp("  ÁÉÄþÐÇ»ð¼ÆËã»ú¼¼Êõ·¢Õ¹ÓÐÏÞ¹«Ë¾  ")
end event

event other;//opensheet(win_sys_begin,win_all,8,layered!)
////menu_main.show()
//
//Win_all.SetMicroHelp("  ÁÉÄþÐÇ»ð¼ÆËã»ú¼¼Êõ·¢Õ¹ÓÐÏÞ¹«Ë¾  ")
end event

event timer;//opensheet(win_sys_begin,win_all,8,layered!)
////menu_main.show()
//
//Win_all.SetMicroHelp("  ÁÉÄþÐÇ»ð¼ÆËã»ú¼¼Êõ·¢Õ¹ÓÐÏÞ¹«Ë¾  ")
end event

type mdi_1 from mdiclient within win_all
long BackColor=276856960
end type

