$PBExportHeader$win_jfsq_spjb.srw
$PBExportComments$ÉóÅú¼¶±ð
forward
global type win_jfsq_spjb from Window
end type
type st_1 from statictext within win_jfsq_spjb
end type
type cb2_save from commandbutton within win_jfsq_spjb
end type
type cb1_save from commandbutton within win_jfsq_spjb
end type
type cb2_del from commandbutton within win_jfsq_spjb
end type
type cb2_add from commandbutton within win_jfsq_spjb
end type
type cb1_del from commandbutton within win_jfsq_spjb
end type
type cb1_add from commandbutton within win_jfsq_spjb
end type
type dw_2 from datawindow within win_jfsq_spjb
end type
type dw_1 from datawindow within win_jfsq_spjb
end type
type rb_2 from radiobutton within win_jfsq_spjb
end type
type rb_1 from radiobutton within win_jfsq_spjb
end type
type cb_1 from commandbutton within win_jfsq_spjb
end type
end forward

global type win_jfsq_spjb from Window
int X=5
int Y=5
int Width=3658
int Height=2401
long BackColor=80269524
WindowState WindowState=maximized!
WindowType WindowType=child!
st_1 st_1
cb2_save cb2_save
cb1_save cb1_save
cb2_del cb2_del
cb2_add cb2_add
cb1_del cb1_del
cb1_add cb1_add
dw_2 dw_2
dw_1 dw_1
rb_2 rb_2
rb_1 rb_1
cb_1 cb_1
end type
global win_jfsq_spjb win_jfsq_spjb

on win_jfsq_spjb.create
this.st_1=create st_1
this.cb2_save=create cb2_save
this.cb1_save=create cb1_save
this.cb2_del=create cb2_del
this.cb2_add=create cb2_add
this.cb1_del=create cb1_del
this.cb1_add=create cb1_add
this.dw_2=create dw_2
this.dw_1=create dw_1
this.rb_2=create rb_2
this.rb_1=create rb_1
this.cb_1=create cb_1
this.Control[]={ this.st_1,&
this.cb2_save,&
this.cb1_save,&
this.cb2_del,&
this.cb2_add,&
this.cb1_del,&
this.cb1_add,&
this.dw_2,&
this.dw_1,&
this.rb_2,&
this.rb_1,&
this.cb_1}
end on

on win_jfsq_spjb.destroy
destroy(this.st_1)
destroy(this.cb2_save)
destroy(this.cb1_save)
destroy(this.cb2_del)
destroy(this.cb2_add)
destroy(this.cb1_del)
destroy(this.cb1_add)
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.cb_1)
end on

event open;dw_1.settransobject(sqlca)
dw_2.settransobject(sqlca)
dw_1.enabled = true
dw_2.enabled = false
rb_1.checked = true
cb1_add.visible = true
cb1_del.visible = true
cb1_save.visible = true
cb2_add.visible = false
cb2_del.visible = false
cb2_save.visible = false
dw_1.retrieve('0')
dw_2.retrieve('1')
messagebox("ÌáÊ¾ÐÅÏ¢","±¾Ä£¿éÖ»ÄÜÔÚÏµÍ³³õÊ¼»¯Ê±Ê¹ÓÃ")
end event

type st_1 from statictext within win_jfsq_spjb
int X=316
int Y=29
int Width=2949
int Height=313
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleLowered!
string Text="    ¼¶±ð³õÊ¼»¯ÉèÖÃ"
boolean FocusRectangle=false
long TextColor=255
long BackColor=16777215
int TextSize=-36
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type cb2_save from commandbutton within win_jfsq_spjb
int X=1994
int Y=1813
int Width=321
int Height=125
int TabOrder=31
string Text="±£´æ"
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;if dw_2.update(true,false) = 1 then
	commit;
   messagebox("ÌáÊ¾ÐÅÏ¢","Êý¾Ý±£´æ³É¹¦!")
else
	messagebox("ÌáÊ¾ÐÅÏ¢","Êý¾Ý±£´æÊ§°Ü!,Çë¼ì²éÎÞÎóºóÔÙ±£´æ")
	rollback;
end if
end event

type cb1_save from commandbutton within win_jfsq_spjb
int X=1994
int Y=1813
int Width=321
int Height=125
int TabOrder=70
string Text="±£´æ"
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;if dw_1.update(true,false) = 1 then
	commit;
   messagebox("ÌáÊ¾ÐÅÏ¢","Êý¾Ý±£´æ³É¹¦!")
else
	messagebox("ÌáÊ¾ÐÅÏ¢","Êý¾Ý±£´æÊ§°Ü!,Çë¼ì²éÎÞÎóºóÔÙ±£´æ")
	rollback;
end if
end event

type cb2_del from commandbutton within win_jfsq_spjb
int X=1281
int Y=1813
int Width=321
int Height=125
int TabOrder=30
string Text="É¾³ý"
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;long i,ll
integer Net

Net = MessageBox("ÌáÊ¾ÐÅÏ¢","ÊÇ·ñÉ¾³ýËùÑ¡ÔñµÄÐÐ£¿" , Exclamation!, OKCancel!, 2)
IF Net = 1 THEN 
	dw_2.deleterow(getrow(dw_2))
	if dw_2.update() = 1 then
	commit;
   end if
ELSE
	rollback;

END IF

ll  = 100
for i = 1 to rowcount(dw_2)
ll = ll + 1
dw_2.setitem(i,'jb',string(ll))
next

end event

type cb2_add from commandbutton within win_jfsq_spjb
int X=567
int Y=1813
int Width=321
int Height=125
int TabOrder=40
string Text="Ôö¼Ó"
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;long rowcount,rowrn,q
string xh1,jb1
rowcount = dw_2.rowcount()///////µÃµ½´°¿ÚÒ»¿ªÊ¼µÄÐÐÊý
rowrn = dw_2.insertrow(0)
dw_2.setitem(rowrn,'mark','1')
			select count(*) into :q from jfsq_jb;
			if q<> 0 then
			   select max(xh) into :xh1 from jfsq_jb ;
		      xh1 = string(long(xh1) + 1)
			else
				xh1 = '10001'
			end if
			dw_2.setitem(rowrn,'xh',xh1)
if rowcount < 1 then ////////ÐÐÊýÐ¡ÓÚÒ»£¬Êý¾Ý´°¿ÚÖÐÎÞ¼ÇÂ¼Ê±,µÚÒ»´ÎÐÂÔö
			   select max(jb) into :jb1 from jfsq_jb where mark = '1';
   		   jb1 = '101'
				dw_2.setitem(rowrn,'jb',jb1)
		else                  //////ÐÐÊý´óÓÚÒ»£¬Êý¾Ý´°¿ÚÖÐÓÐ¼ÇÂ¼,µÚ¶þ´Î»òÕßÁªÏµÐÂÔö
			dw_2.setitem(rowrn,'jb',string(long(dw_2.getitemstring(rowcount,'jb')) + 1 ))
end if
if dw_2.update() = 1 then
commit;
end if
end event

type cb1_del from commandbutton within win_jfsq_spjb
int X=1281
int Y=1813
int Width=321
int Height=125
int TabOrder=60
string Text="É¾³ý"
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;long i,ll
integer Net

Net = MessageBox("ÌáÊ¾ÐÅÏ¢","ÊÇ·ñÉ¾³ýËùÑ¡ÔñµÄÐÐ£¿" , Exclamation!, OKCancel!, 2)
IF Net = 1 THEN 
	dw_1.deleterow(getrow(dw_1))
	if dw_1.update() = 1 then
	commit;
   end if
ELSE
	rollback;

END IF

ll  = 100
for i = 1 to rowcount(dw_1)
ll = ll + 1
dw_1.setitem(i,'jb',string(ll))
next

end event

type cb1_add from commandbutton within win_jfsq_spjb
int X=567
int Y=1813
int Width=321
int Height=125
int TabOrder=10
string Text="Ôö¼Ó"
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;long rowcount,rowrn,q
string xh1,jb1
rowcount = dw_1.rowcount()///////µÃµ½´°¿ÚÒ»¿ªÊ¼µÄÐÐÊý
rowrn = dw_1.insertrow(0)
dw_1.setitem(rowrn,'mark','0')
		select count(*) into :q from jfsq_jb;
			if q<> 0 then
			   select max(xh) into :xh1 from jfsq_jb ;
		      xh1 = string(long(xh1) + 1)
			else
				xh1 = '10001'
			end if
			dw_1.setitem(rowrn,'xh',xh1)
if rowcount < 1 then ////////ÐÐÊýÐ¡ÓÚÒ»£¬Êý¾Ý´°¿ÚÖÐÎÞ¼ÇÂ¼Ê±,µÚÒ»´ÎÐÂÔö
			   select max(jb) into :jb1 from jfsq_jb where mark = '0';
   		   jb1 = '101'
				dw_1.setitem(rowrn,'jb',jb1)
		else                  //////ÐÐÊý´óÓÚÒ»£¬Êý¾Ý´°¿ÚÖÐÓÐ¼ÇÂ¼,µÚ¶þ´Î»òÕßÁªÏµÐÂÔö
			dw_1.setitem(rowrn,'jb',string(long(dw_1.getitemstring(rowcount,'jb')) + 1 ))
end if
if dw_1.update() = 1 then
commit;
end if
end event

type dw_2 from datawindow within win_jfsq_spjb
int X=1953
int Y=541
int Width=1281
int Height=1069
int TabOrder=20
string DataObject="dw_jfsq_jbset"
BorderStyle BorderStyle=StyleLowered!
boolean HScrollBar=true
boolean VScrollBar=true
boolean LiveScroll=true
end type

type dw_1 from datawindow within win_jfsq_spjb
int X=357
int Y=541
int Width=1281
int Height=1069
int TabOrder=50
string DataObject="dw_jfsq_jbset"
BorderStyle BorderStyle=StyleLowered!
boolean HScrollBar=true
boolean VScrollBar=true
boolean LiveScroll=true
end type

type rb_2 from radiobutton within win_jfsq_spjb
int X=2369
int Y=441
int Width=449
int Height=101
string Text="ÆäËü¿îÏî"
long TextColor=128
long BackColor=80269524
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;dw_1.enabled = false
dw_2.enabled = true
cb1_add.visible = false
cb1_del.visible = false
cb1_save.visible = false
cb2_add.visible = true
cb2_del.visible = true
cb2_save.visible = true
end event

type rb_1 from radiobutton within win_jfsq_spjb
int X=782
int Y=425
int Width=435
int Height=101
string Text="Éè±¸¿îÏî"
long TextColor=128
long BackColor=80269524
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;dw_1.enabled = true
dw_2.enabled = false
cb1_add.visible = true
cb1_del.visible = true
cb1_save.visible = true
cb2_add.visible = false
cb2_del.visible = false
cb2_save.visible = false
end event

type cb_1 from commandbutton within win_jfsq_spjb
int X=2707
int Y=1813
int Width=321
int Height=125
int TabOrder=80
string Text="ÍË³ö"
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;close(parent)
end event

