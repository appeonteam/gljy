$PBExportHeader$win_sys_end.srw
$PBExportComments$¹Ø±Õ´°¿Ú
forward
global type win_sys_end from Window
end type
type p_1 from picture within win_sys_end
end type
end forward

global type win_sys_end from Window
int X=5
int Y=5
int Width=3658
int Height=2401
long BackColor=33554431
WindowType WindowType=child!
p_1 p_1
end type
global win_sys_end win_sys_end

event open;//st_rq.text = fun_datetime('datetime')
menu_main.m_help.hide()
menu_main.m_exit.hide()


timer(0.5)

end event

event clicked;disconnect;
close(win_sys_end)
close(win_all)

end event

event timer;//st_rq.text = string(today())
close(win_sys_end)
close(win_all)


end event

event rbuttondown;close(win_sys_end)
close(win_all)


end event

event key;close(win_sys_end)
close(win_all)


end event

on win_sys_end.create
this.p_1=create p_1
this.Control[]={ this.p_1}
end on

on win_sys_end.destroy
destroy(this.p_1)
end on

event doubleclicked;close(win_sys_end)
close(win_all)

end event

type p_1 from picture within win_sys_end
int X=535
int Y=269
int Width=2743
int Height=1725
string PictureName="c:\jyoa\t1.bmp"
boolean FocusRectangle=false
boolean OriginalSize=true
end type

event clicked;close(win_sys_end)
close(win_all)

end event

