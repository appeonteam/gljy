$PBExportHeader$win_jfsq_ryset.srw
$PBExportComments$ÈËÔ±ÉèÖÃ
forward
global type win_jfsq_ryset from window
end type
type sle_3 from singlelineedit within win_jfsq_ryset
end type
type sle_2 from singlelineedit within win_jfsq_ryset
end type
type sle_1 from singlelineedit within win_jfsq_ryset
end type
type st_3 from statictext within win_jfsq_ryset
end type
type st_2 from statictext within win_jfsq_ryset
end type
type st_1 from statictext within win_jfsq_ryset
end type
type cb_4 from commandbutton within win_jfsq_ryset
end type
type cb_3 from commandbutton within win_jfsq_ryset
end type
type rb_qt from radiobutton within win_jfsq_ryset
end type
type rb_sb from radiobutton within win_jfsq_ryset
end type
type ddlb_qt from dropdownlistbox within win_jfsq_ryset
end type
type ddlb_sb from dropdownlistbox within win_jfsq_ryset
end type
type cb_2 from commandbutton within win_jfsq_ryset
end type
type dw_1 from datawindow within win_jfsq_ryset
end type
type cb_1 from commandbutton within win_jfsq_ryset
end type
end forward

global type win_jfsq_ryset from window
integer x = 5
integer y = 4
integer width = 3657
integer height = 2400
windowtype windowtype = child!
windowstate windowstate = maximized!
long backcolor = 80269524
sle_3 sle_3
sle_2 sle_2
sle_1 sle_1
st_3 st_3
st_2 st_2
st_1 st_1
cb_4 cb_4
cb_3 cb_3
rb_qt rb_qt
rb_sb rb_sb
ddlb_qt ddlb_qt
ddlb_sb ddlb_sb
cb_2 cb_2
dw_1 dw_1
cb_1 cb_1
end type
global win_jfsq_ryset win_jfsq_ryset

on win_jfsq_ryset.create
this.sle_3=create sle_3
this.sle_2=create sle_2
this.sle_1=create sle_1
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.cb_4=create cb_4
this.cb_3=create cb_3
this.rb_qt=create rb_qt
this.rb_sb=create rb_sb
this.ddlb_qt=create ddlb_qt
this.ddlb_sb=create ddlb_sb
this.cb_2=create cb_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.Control[]={this.sle_3,&
this.sle_2,&
this.sle_1,&
this.st_3,&
this.st_2,&
this.st_1,&
this.cb_4,&
this.cb_3,&
this.rb_qt,&
this.rb_sb,&
this.ddlb_qt,&
this.ddlb_sb,&
this.cb_2,&
this.dw_1,&
this.cb_1}
end on

on win_jfsq_ryset.destroy
destroy(this.sle_3)
destroy(this.sle_2)
destroy(this.sle_1)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.rb_qt)
destroy(this.rb_sb)
destroy(this.ddlb_qt)
destroy(this.ddlb_sb)
destroy(this.cb_2)
destroy(this.dw_1)
destroy(this.cb_1)
end on

event open;string jb1,mc1
//rb_sb.checked = true

 DECLARE cur_sb CURSOR FOR  
  SELECT jb,mc  
    FROM jfsq_jb  
   WHERE mark = '0' order by jb;
	open cur_sb;
	fetch cur_sb into :jb1,:mc1;
	ddlb_sb.additem(space(40))
	do while sqlca.sqlcode = 0 
    ddlb_sb.additem(mc1 +space(40) + jb1)
   fetch cur_sb into :jb1,:mc1;	
loop
close cur_sb;
 DECLARE cur_qt CURSOR FOR  
  SELECT jb,mc  
    FROM jfsq_jb  
   WHERE mark = '1' order by jb;
	open cur_qt;
	ddlb_qt.additem(space(40))
	fetch cur_qt into :jb1,:mc1;
	do while sqlca.sqlcode = 0 
    ddlb_qt.additem(mc1 + space(40) +jb1)
   fetch cur_qt into :jb1,:mc1;	
loop
close cur_qt;
dw_1.settransobject(sqlca)
dw_1.retrieve()
end event

type sle_3 from singlelineedit within win_jfsq_ryset
integer x = 2089
integer y = 956
integer width = 471
integer height = 92
integer taborder = 13
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean autohscroll = false
borderstyle borderstyle = stylelowered!
end type

type sle_2 from singlelineedit within win_jfsq_ryset
integer x = 1353
integer y = 956
integer width = 471
integer height = 92
integer taborder = 20
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean autohscroll = false
borderstyle borderstyle = stylelowered!
end type

type sle_1 from singlelineedit within win_jfsq_ryset
integer x = 731
integer y = 948
integer width = 471
integer height = 92
integer taborder = 30
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean autohscroll = false
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within win_jfsq_ryset
integer x = 2011
integer y = 780
integer width = 247
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269524
boolean enabled = false
string text = "Ö°Îñ"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_2 from statictext within win_jfsq_ryset
integer x = 1298
integer y = 788
integer width = 247
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269524
boolean enabled = false
string text = "²¿ÃÅ"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within win_jfsq_ryset
integer x = 677
integer y = 764
integer width = 247
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269524
boolean enabled = false
string text = " ÐÕÃû"
alignment alignment = right!
boolean focusrectangle = false
end type

type cb_4 from commandbutton within win_jfsq_ryset
integer x = 1810
integer y = 1812
integer width = 247
integer height = 108
integer taborder = 60
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "·ÅÆú"
end type

type cb_3 from commandbutton within win_jfsq_ryset
integer x = 1129
integer y = 1808
integer width = 247
integer height = 108
integer taborder = 50
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "È·¶¨"
end type

type rb_qt from radiobutton within win_jfsq_ryset
integer x = 2039
integer y = 1440
integer width = 439
integer height = 84
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269524
string text = "ÆäËü¾­·Ñ"
end type

type rb_sb from radiobutton within win_jfsq_ryset
integer x = 919
integer y = 1440
integer width = 439
integer height = 84
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269524
string text = "Éè±¸¾­·Ñ"
end type

type ddlb_qt from dropdownlistbox within win_jfsq_ryset
integer x = 2002
integer y = 1576
integer width = 590
integer height = 592
integer taborder = 70
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean vscrollbar = true
end type

type ddlb_sb from dropdownlistbox within win_jfsq_ryset
integer x = 809
integer y = 1576
integer width = 590
integer height = 592
integer taborder = 40
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean vscrollbar = true
end type

type cb_2 from commandbutton within win_jfsq_ryset
integer x = 1125
integer y = 1904
integer width = 352
integer height = 140
integer taborder = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "ÐÞ¸Ä"
end type

type dw_1 from datawindow within win_jfsq_ryset
integer x = 242
integer y = 36
integer width = 3026
integer height = 620
integer taborder = 10
string dataobject = "dw_jfsq_ry"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;if row > 0 then
   selectrow(0,false)
	selectrow(row,true)
	gs_keyno = getitemstring(row,'ryid')
else
	setnull(gs_keyno)
end if


end event

type cb_1 from commandbutton within win_jfsq_ryset
integer x = 1669
integer y = 1904
integer width = 352
integer height = 140
integer taborder = 90
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "ÍË³ö"
end type

event clicked;close(parent)
end event

