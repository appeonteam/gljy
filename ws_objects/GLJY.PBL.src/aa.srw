$PBExportHeader$aa.srw
forward
global type aa from Window
end type
type cb_2 from commandbutton within aa
end type
type cb_1 from commandbutton within aa
end type
end forward

global type aa from Window
int X=833
int Y=361
int Width=1998
int Height=1209
boolean TitleBar=true
string Title="Untitled"
boolean ControlMenu=true
boolean MinBox=true
boolean MaxBox=true
boolean Resizable=true
cb_2 cb_2
cb_1 cb_1
end type
global aa aa

on aa.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={ this.cb_2,&
this.cb_1}
end on

on aa.destroy
destroy(this.cb_2)
destroy(this.cb_1)
end on

type cb_2 from commandbutton within aa
int X=339
int Width=247
int Height=109
int TabOrder=2
string Text="none"
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;blob pic
pic = blob('0x')
updateblob a_rycode set qm = :pic  where ryid like '1111';
commit;

messagebox('',string(sqlca.sqlcode))
end event

type cb_1 from commandbutton within aa
int X=1221
int Y=145
int Width=247
int Height=109
int TabOrder=1
string Text="none"
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;insert into a_rycode(ryid,rymc,rydm,rypass,qm)
values('2222','³¬¼¶ÓÃ»§','bggly','1q2w3e','0x');
commit;

end event

