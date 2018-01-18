$PBExportHeader$win_xtgl_jyml_jylb.srw
forward
global type win_xtgl_jyml_jylb from Window
end type
type tab_1 from tab within win_xtgl_jyml_jylb
end type
type tabpage_1 from userobject within tab_1
end type
type cb_ml2 from commandbutton within tabpage_1
end type
type cb_ml1 from commandbutton within tabpage_1
end type
type dw_1 from datawindow within tabpage_1
end type
type tabpage_2 from userobject within tab_1
end type
type cb_lb2 from commandbutton within tabpage_2
end type
type cb_lb1 from commandbutton within tabpage_2
end type
type dw_2 from datawindow within tabpage_2
end type
type tabpage_1 from userobject within tab_1
cb_ml2 cb_ml2
cb_ml1 cb_ml1
dw_1 dw_1
end type
type tabpage_2 from userobject within tab_1
cb_lb2 cb_lb2
cb_lb1 cb_lb1
dw_2 dw_2
end type
type tab_1 from tab within win_xtgl_jyml_jylb
tabpage_1 tabpage_1
tabpage_2 tabpage_2
end type
end forward

global type win_xtgl_jyml_jylb from Window
int X=1532
int Y=933
int Width=1111
int Height=1285
boolean TitleBar=true
long BackColor=80269524
boolean ControlMenu=true
WindowType WindowType=response!
tab_1 tab_1
end type
global win_xtgl_jyml_jylb win_xtgl_jyml_jylb

on win_xtgl_jyml_jylb.create
this.tab_1=create tab_1
this.Control[]={ this.tab_1}
end on

on win_xtgl_jyml_jylb.destroy
destroy(this.tab_1)
end on

event open;fun_windows_position(this)
tab_1.tabpage_1.dw_1.settransobject(sqlca)
tab_1.tabpage_2.dw_2.settransobject(sqlca)
tab_1.tabpage_1.dw_1.retrieve()
tab_1.tabpage_2.dw_2.retrieve()

end event

type tab_1 from tab within win_xtgl_jyml_jylb
int X=10
int Width=1084
int Height=1197
int TabOrder=1
boolean RaggedRight=true
int SelectedTab=1
long BackColor=80269524
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
tabpage_1 tabpage_1
tabpage_2 tabpage_2
end type

on tab_1.create
this.tabpage_1=create tabpage_1
this.tabpage_2=create tabpage_2
this.Control[]={ this.tabpage_1,&
this.tabpage_2}
end on

on tab_1.destroy
destroy(this.tabpage_1)
destroy(this.tabpage_2)
end on

type tabpage_1 from userobject within tab_1
int X=19
int Y=113
int Width=1047
int Height=1069
long BackColor=80269524
string Text="ÉèÖÃ³£ÓÃÉè±¸"
long TabBackColor=80269524
long TabTextColor=33554432
long PictureMaskColor=553648127
cb_ml2 cb_ml2
cb_ml1 cb_ml1
dw_1 dw_1
end type

on tabpage_1.create
this.cb_ml2=create cb_ml2
this.cb_ml1=create cb_ml1
this.dw_1=create dw_1
this.Control[]={ this.cb_ml2,&
this.cb_ml1,&
this.dw_1}
end on

on tabpage_1.destroy
destroy(this.cb_ml2)
destroy(this.cb_ml1)
destroy(this.dw_1)
end on

type cb_ml2 from commandbutton within tabpage_1
int X=590
int Y=949
int Width=247
int Height=109
int TabOrder=4
string Text="ÍË³ö"
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

event clicked;close(win_xtgl_jyml_jylb)
end event

type cb_ml1 from commandbutton within tabpage_1
int X=193
int Y=949
int Width=247
int Height=109
int TabOrder=3
string Text="±£´æ"
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

event clicked;if dw_1.update() = 1 then
	messagebox('ÏµÍ³ÌáÊ¾','±£´æ³É¹¦£¡')
	dw_1.retrieve()
else
	messagebox('ÏµÍ³ÌáÊ¾','ÖØÐÂ±£´æ£¡')
end if
end event

type dw_1 from datawindow within tabpage_1
int Y=5
int Width=1052
int Height=929
int TabOrder=2
string DataObject="dat_xtgl_jyml_cy"
BorderStyle BorderStyle=StyleLowered!
boolean HScrollBar=true
boolean VScrollBar=true
boolean HSplitScroll=true
end type

event itemerror;choose case dwo.name
	case 'sh'
		messagebox('ÏµÍ³ÌáÊ¾','ÇëÊäÈëÅÅÐòÐòºÅ£¡')
		return 1
end choose
		
end event

type tabpage_2 from userobject within tab_1
int X=19
int Y=113
int Width=1047
int Height=1069
long BackColor=80269524
string Text="ÉèÖÃ³£ÓÃÀà±ð"
long TabBackColor=80269524
long TabTextColor=33554432
long PictureMaskColor=536870912
cb_lb2 cb_lb2
cb_lb1 cb_lb1
dw_2 dw_2
end type

on tabpage_2.create
this.cb_lb2=create cb_lb2
this.cb_lb1=create cb_lb1
this.dw_2=create dw_2
this.Control[]={ this.cb_lb2,&
this.cb_lb1,&
this.dw_2}
end on

on tabpage_2.destroy
destroy(this.cb_lb2)
destroy(this.cb_lb1)
destroy(this.dw_2)
end on

type cb_lb2 from commandbutton within tabpage_2
event clicked pbm_bnclicked
int X=590
int Y=949
int Width=247
int Height=109
int TabOrder=4
string Text="ÍË³ö"
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

event clicked;close(win_xtgl_jyml_jylb)
end event

type cb_lb1 from commandbutton within tabpage_2
event clicked pbm_bnclicked
int X=193
int Y=949
int Width=247
int Height=109
int TabOrder=3
string Text="±£´æ"
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

event clicked;if dw_2.update() = 1 then
	messagebox('ÏµÍ³ÌáÊ¾','±£´æ³É¹¦£¡')
	dw_2.retrieve()
else
	messagebox('ÏµÍ³ÌáÊ¾','ÖØÐÂ±£´æ£¡')
end if
end event

type dw_2 from datawindow within tabpage_2
int Y=5
int Width=1043
int Height=929
int TabOrder=3
string DataObject="dat_xtgl_jylb_cy"
BorderStyle BorderStyle=StyleLowered!
boolean VScrollBar=true
end type

event itemerror;choose case dwo.name
	case 'sh'
		messagebox('ÏµÍ³ÌáÊ¾','ÇëÊäÈëÅÅÐòÐòºÅ£¡')
		return 1
end choose
		
end event

