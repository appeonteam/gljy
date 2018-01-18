$PBExportHeader$win_sys_version.srw
$PBExportComments$ÏµÍ³ÐÅÏ¢
forward
global type win_sys_version from Window
end type
type p_2 from picture within win_sys_version
end type
type cb_1 from commandbutton within win_sys_version
end type
type st_unit from statictext within win_sys_version
end type
type st_english from statictext within win_sys_version
end type
type sle_4 from singlelineedit within win_sys_version
end type
type sle_2 from singlelineedit within win_sys_version
end type
type sle_1 from singlelineedit within win_sys_version
end type
type p_1 from picture within win_sys_version
end type
type st_5 from statictext within win_sys_version
end type
type st_4 from statictext within win_sys_version
end type
type st_3 from statictext within win_sys_version
end type
type st_2 from statictext within win_sys_version
end type
type st_app from statictext within win_sys_version
end type
type st_6 from statictext within win_sys_version
end type
type em_1 from editmask within win_sys_version
end type
type st_ri from statictext within win_sys_version
end type
type st_7 from statictext within win_sys_version
end type
end forward

global type win_sys_version from Window
int X=97
int Y=85
int Width=3484
int Height=2249
long BackColor=79741120
WindowType WindowType=child!
p_2 p_2
cb_1 cb_1
st_unit st_unit
st_english st_english
sle_4 sle_4
sle_2 sle_2
sle_1 sle_1
p_1 p_1
st_5 st_5
st_4 st_4
st_3 st_3
st_2 st_2
st_app st_app
st_6 st_6
em_1 em_1
st_ri st_ri
st_7 st_7
end type
global win_sys_version win_sys_version

event open;integer ii , jj 

ii = pos(win_all.title,'-') - 1
sle_1.text = trim(gs_staffname)
sle_2.text = trim(gs_deptname)
//em_1.text = gs_starttime
st_ri.text = gs_starttime
sle_4.text = mid(win_all.title,jj,ii)

end event

on win_sys_version.create
this.p_2=create p_2
this.cb_1=create cb_1
this.st_unit=create st_unit
this.st_english=create st_english
this.sle_4=create sle_4
this.sle_2=create sle_2
this.sle_1=create sle_1
this.p_1=create p_1
this.st_5=create st_5
this.st_4=create st_4
this.st_3=create st_3
this.st_2=create st_2
this.st_app=create st_app
this.st_6=create st_6
this.em_1=create em_1
this.st_ri=create st_ri
this.st_7=create st_7
this.Control[]={ this.p_2,&
this.cb_1,&
this.st_unit,&
this.st_english,&
this.sle_4,&
this.sle_2,&
this.sle_1,&
this.p_1,&
this.st_5,&
this.st_4,&
this.st_3,&
this.st_2,&
this.st_app,&
this.st_6,&
this.em_1,&
this.st_ri,&
this.st_7}
end on

on win_sys_version.destroy
destroy(this.p_2)
destroy(this.cb_1)
destroy(this.st_unit)
destroy(this.st_english)
destroy(this.sle_4)
destroy(this.sle_2)
destroy(this.sle_1)
destroy(this.p_1)
destroy(this.st_5)
destroy(this.st_4)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_app)
destroy(this.st_6)
destroy(this.em_1)
destroy(this.st_ri)
destroy(this.st_7)
end on

type p_2 from picture within win_sys_version
int X=1541
int Y=1817
int Width=147
int Height=121
string PictureName="c:\jyoa\exit.bmp"
boolean FocusRectangle=false
end type

event clicked;close(win_sys_version)
end event

type cb_1 from commandbutton within win_sys_version
int X=1527
int Y=1797
int Width=503
int Height=145
int TabOrder=20
string Text="    ÍË³ö"
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;close(win_sys_version)
end event

type st_unit from statictext within win_sys_version
int X=417
int Y=877
int Width=2021
int Height=105
boolean Enabled=false
string Text="ÁÉÄþÐÇ»ð¼ÆËã»úÈí¼þ¹¤³ÌÓÐÏÞ¹«Ë¾"
boolean FocusRectangle=false
long TextColor=8388608
long BackColor=16777215
int TextSize=-18
int Weight=700
string FaceName="¿¬Ìå_GB2312"
FontFamily FontFamily=Modern!
FontPitch FontPitch=Fixed!
end type

type st_english from statictext within win_sys_version
int X=417
int Y=581
int Width=1322
int Height=113
boolean Enabled=false
string Text="JY Group Aptitude OAS"
boolean FocusRectangle=false
long TextColor=32768
long BackColor=16777215
int TextSize=-16
int Weight=700
string FaceName="Comic Sans MS"
boolean Underline=true
FontFamily FontFamily=Script!
FontPitch FontPitch=Variable!
end type

type sle_4 from singlelineedit within win_sys_version
int X=1966
int Y=1421
int Width=1047
int Height=117
BorderStyle BorderStyle=StyleRaised!
boolean AutoHScroll=false
boolean DisplayOnly=true
long TextColor=32768
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type sle_2 from singlelineedit within win_sys_version
int X=673
int Y=1421
int Width=691
int Height=117
BorderStyle BorderStyle=StyleRaised!
boolean AutoHScroll=false
boolean DisplayOnly=true
long TextColor=32768
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type sle_1 from singlelineedit within win_sys_version
int X=673
int Y=1229
int Width=691
int Height=117
BorderStyle BorderStyle=StyleRaised!
boolean AutoHScroll=false
boolean DisplayOnly=true
long TextColor=32768
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type p_1 from picture within win_sys_version
int X=2323
int Y=425
int Width=791
int Height=501
string PictureName="c:\jyoa\computer.bmp"
boolean FocusRectangle=false
end type

type st_5 from statictext within win_sys_version
int X=1601
int Y=1433
int Width=375
int Height=93
boolean Enabled=false
string Text="²Ù×÷Ä£¿é£º"
boolean FocusRectangle=false
long TextColor=8388608
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type st_4 from statictext within win_sys_version
int X=1601
int Y=1241
int Width=375
int Height=93
boolean Enabled=false
string Text="ÉÏ»úÊ±¼ä£º"
boolean FocusRectangle=false
long TextColor=8388608
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type st_3 from statictext within win_sys_version
int X=471
int Y=1433
int Width=247
int Height=93
boolean Enabled=false
string Text="µ¥Î»£º"
boolean FocusRectangle=false
long TextColor=8388608
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type st_2 from statictext within win_sys_version
int X=471
int Y=1241
int Width=247
int Height=93
boolean Enabled=false
string Text="ÐÕÃû:"
boolean FocusRectangle=false
long TextColor=8388608
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type st_app from statictext within win_sys_version
int X=353
int Y=221
int Width=2268
int Height=205
boolean Enabled=false
string Text="¹øÂ¯¼ìÑéËù°ì¹«ÏµÍ³"
boolean FocusRectangle=false
long TextColor=255
long BackColor=16777215
int TextSize=-36
int Weight=700
string FaceName="ºÚÌå"
boolean Italic=true
FontPitch FontPitch=Variable!
end type

type st_6 from statictext within win_sys_version
int X=243
int Y=93
int Width=2945
int Height=1005
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleRaised!
boolean FocusRectangle=false
long TextColor=255
long BackColor=16777215
int TextSize=-36
int Weight=700
string FaceName="ËÎÌå"
boolean Italic=true
FontPitch FontPitch=Variable!
end type

type em_1 from editmask within win_sys_version
int X=133
int Y=413
int Width=1047
int Height=101
int TabOrder=10
boolean Visible=false
BorderStyle BorderStyle=StyleRaised!
string Mask="yyyyÄêmmÔÂddÈÕhhÊ±ss·ÖmmÃë"
MaskDataType MaskDataType=DateTimeMask!
string DisplayData="l"
long TextColor=32768
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type st_ri from statictext within win_sys_version
int X=1966
int Y=1237
int Width=1047
int Height=101
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleRaised!
string Text="none"
boolean FocusRectangle=false
long TextColor=32768
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type st_7 from statictext within win_sys_version
int X=247
int Y=1117
int Width=2945
int Height=573
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleRaised!
boolean FocusRectangle=false
long TextColor=255
long BackColor=16777215
int TextSize=-36
int Weight=700
string FaceName="ËÎÌå"
boolean Italic=true
FontPitch FontPitch=Variable!
end type

