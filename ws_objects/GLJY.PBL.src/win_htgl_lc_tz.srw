$PBExportHeader$win_htgl_lc_tz.srw
forward
global type win_htgl_lc_tz from window
end type
type ddlb_1 from dropdownlistbox within win_htgl_lc_tz
end type
type st_2 from statictext within win_htgl_lc_tz
end type
type cb_dele from commandbutton within win_htgl_lc_tz
end type
type cb_edit from commandbutton within win_htgl_lc_tz
end type
type cb_add from commandbutton within win_htgl_lc_tz
end type
type cb_exit from commandbutton within win_htgl_lc_tz
end type
type dw_1 from datawindow within win_htgl_lc_tz
end type
end forward

global type win_htgl_lc_tz from window
integer x = 14
integer y = 16
integer width = 3643
integer height = 2128
windowtype windowtype = child!
long backcolor = 81324524
ddlb_1 ddlb_1
st_2 st_2
cb_dele cb_dele
cb_edit cb_edit
cb_add cb_add
cb_exit cb_exit
dw_1 dw_1
end type
global win_htgl_lc_tz win_htgl_lc_tz

type variables
string Is_ShAdd,Is_ShJytype
int Ii_ShNrid
long Il_CurrentRow
end variables

on win_htgl_lc_tz.create
this.ddlb_1=create ddlb_1
this.st_2=create st_2
this.cb_dele=create cb_dele
this.cb_edit=create cb_edit
this.cb_add=create cb_add
this.cb_exit=create cb_exit
this.dw_1=create dw_1
this.Control[]={this.ddlb_1,&
this.st_2,&
this.cb_dele,&
this.cb_edit,&
this.cb_add,&
this.cb_exit,&
this.dw_1}
end on

on win_htgl_lc_tz.destroy
destroy(this.ddlb_1)
destroy(this.st_2)
destroy(this.cb_dele)
destroy(this.cb_edit)
destroy(this.cb_add)
destroy(this.cb_exit)
destroy(this.dw_1)
end on

event open;string ls_NowJytype,ls_NowTypeName,ls_NowStr
ddlb_1.SelectItem(1)
gs_htlb = ddlb_1.text
//declare c_bgzl cursor for
//select jytype,typename from a_bgml where jymk = 'dj' order by id;
//open c_bgzl;
//fetch c_bgzl into :ls_NowJytype,:ls_NowTypeName;
//do while sqlca.sqlcode = 0
//	ddlb_bgzl.AddItem(ls_NowTypeName + space(100) + ls_NowJytype)
//	fetch c_bgzl into :ls_NowJytype,:ls_NowTypeName;
//loop
//close c_bgzl;
//
dw_1.SetTransObject(sqlca)
dw_1.retrieve(gs_htlb)
//Is_ShJytype = ''
//
//if ddlb_bgzl.SelectItem(1) > 0 then
//	ls_NowStr = ddlb_bgzl.Text
//	ls_NowStr = right(ls_NowStr,2)
//	dw_1.Retrieve(ls_NowStr)
//	Is_ShJytype = ls_NowStr
//end if
//Il_CurrentRow = 0
//
end event

type ddlb_1 from dropdownlistbox within win_htgl_lc_tz
integer x = 32
integer y = 116
integer width = 827
integer height = 400
integer taborder = 20
integer textsize = -12
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 81324524
string item[] = {"ºÏÍ¬/Ð­ÒéÆÀÉó´«µÝµ¥"}
end type

event selectionchanged;gs_htlb = this.text
end event

type st_2 from statictext within win_htgl_lc_tz
integer x = 18
integer y = 16
integer width = 562
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 128
long backcolor = 81324524
boolean enabled = false
string text = "Ñ¡ÔñÀà±ð£º"
alignment alignment = center!
boolean focusrectangle = false
end type

type cb_dele from commandbutton within win_htgl_lc_tz
integer x = 119
integer y = 1388
integer width = 613
integer height = 136
integer taborder = 20
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "É¾        ³ý"
end type

event clicked;IF messagebox("ÏµÍ³ÌáÊ¾","È·ÈÏÊÇ·ñÉ¾³ýÉóºË¹ý³Ì£¿",Exclamation!,YesNo!,2)=1 THEN
if dw_1.rowcount() <= 0 then return
SetPointer(HourGlass!)

if trim(gs_htlb) = '' or isnull(gs_htlb) then
	messagebox("ÏµÍ³ÌáÊ¾","Ã»ÓÐÑ¡ÖÐÉóºË¹ý³Ì!")

	return
end if
dw_1.SetRedraw(FALSE)
delete from b_htgl_lc where lb = :gs_htlb;
dw_1.SetRedraw(TRUE)
dw_1.retrieve(gs_htlb)
END IF
SetPointer(Arrow!)
end event

type cb_edit from commandbutton within win_htgl_lc_tz
integer x = 119
integer y = 1020
integer width = 613
integer height = 136
integer taborder = 30
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÐÞ        ¸Ä"
end type

event clicked;
if isnull(gs_htlb) or gs_htlb = '' then   
   MessageBox("ÌáÊ¾","ÇëÊ×ÏÈÑ¡È¡Ä³¸öÉóºË¹ý³Ì½øÐÐÐÞ¸Ä!")
	return
end if

//Is_ShAdd = 'EDIT'

//int li_NowNrid
//li_NowNrid = dw_1.GetItemNumber(ll_NowRow,'id')
//Ii_ShNrid = li_NowNrid
open(win_htgl_lc)

end event

type cb_add from commandbutton within win_htgl_lc_tz
integer x = 119
integer y = 652
integer width = 613
integer height = 136
integer taborder = 40
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "Ôö        ¼Ó"
end type

event clicked;gs_htlb = ddlb_1.text
if isnull(gs_htlb) or gs_htlb = '' then   
   MessageBox("ÌáÊ¾","ÇëÑ¡ÔñÀà±ð!")
	return
end if
long sl
select count(*) into :sl from b_htgl_lc where lb = :gs_htlb;
if sl <> 0 then
		messagebox("ÌáÊ¾","ÏµÍ³ÖÐÒÑ´æÔÚ¸ÃÀà±ðµÄÉóºË¹ý³Ì!")
		return
end if

//Is_ShAdd = 'ADD'
insert into b_htgl_lc (lb,xz1,xz2,xz4,xz5) values (:gs_htlb,'1','1','1','1');
commit;
open(win_htgl_lc)
end event

type cb_exit from commandbutton within win_htgl_lc_tz
integer x = 119
integer y = 1756
integer width = 613
integer height = 136
integer taborder = 60
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË        ³ö"
end type

event clicked;close(parent)
end event

type dw_1 from datawindow within win_htgl_lc_tz
integer x = 887
integer width = 2743
integer height = 2040
integer taborder = 10
string dataobject = "dw_htgl_lc_tz"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
end type

event clicked;//if row > 0 then
//	Il_CurrentRow = row
//else
//	Il_CurrentRow = 0
//end if
if row > 0 then
	if dw_1.rowcount() <= 0 then return
	This.SelectRow(0, FALSE)
	This.SelectRow(row, TRUE)
	gs_htlb = dw_1.getitemstring(row,'lb')
end if 
end event

