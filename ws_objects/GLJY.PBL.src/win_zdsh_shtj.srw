$PBExportHeader$win_zdsh_shtj.srw
forward
global type win_zdsh_shtj from window
end type
type st_1 from statictext within win_zdsh_shtj
end type
type rb_2 from radiobutton within win_zdsh_shtj
end type
type rb_1 from radiobutton within win_zdsh_shtj
end type
type cbx_9 from checkbox within win_zdsh_shtj
end type
type cbx_8 from checkbox within win_zdsh_shtj
end type
type cbx_7 from checkbox within win_zdsh_shtj
end type
type cbx_6 from checkbox within win_zdsh_shtj
end type
type cbx_5 from checkbox within win_zdsh_shtj
end type
type cbx_4 from checkbox within win_zdsh_shtj
end type
type cbx_3 from checkbox within win_zdsh_shtj
end type
type cbx_2 from checkbox within win_zdsh_shtj
end type
type cbx_1 from checkbox within win_zdsh_shtj
end type
type cb_exit from commandbutton within win_zdsh_shtj
end type
type cb_save from commandbutton within win_zdsh_shtj
end type
type cb_dele from commandbutton within win_zdsh_shtj
end type
type cb_add from commandbutton within win_zdsh_shtj
end type
type st_title from statictext within win_zdsh_shtj
end type
type dw_1 from datawindow within win_zdsh_shtj
end type
type gb_2 from groupbox within win_zdsh_shtj
end type
type gb_1 from groupbox within win_zdsh_shtj
end type
end forward

global type win_zdsh_shtj from window
integer x = 978
integer y = 448
integer width = 3072
integer height = 1696
boolean titlebar = true
string title = "ÉèÖÃÉóºËÌõ¼þºÍÉóºËÂ·¾¶"
windowtype windowtype = response!
long backcolor = 33552359
st_1 st_1
rb_2 rb_2
rb_1 rb_1
cbx_9 cbx_9
cbx_8 cbx_8
cbx_7 cbx_7
cbx_6 cbx_6
cbx_5 cbx_5
cbx_4 cbx_4
cbx_3 cbx_3
cbx_2 cbx_2
cbx_1 cbx_1
cb_exit cb_exit
cb_save cb_save
cb_dele cb_dele
cb_add cb_add
st_title st_title
dw_1 dw_1
gb_2 gb_2
gb_1 gb_1
end type
global win_zdsh_shtj win_zdsh_shtj

type variables
string Is_ShAdd,Is_ShJytype
int      Ii_ShNrid
end variables

on win_zdsh_shtj.create
this.st_1=create st_1
this.rb_2=create rb_2
this.rb_1=create rb_1
this.cbx_9=create cbx_9
this.cbx_8=create cbx_8
this.cbx_7=create cbx_7
this.cbx_6=create cbx_6
this.cbx_5=create cbx_5
this.cbx_4=create cbx_4
this.cbx_3=create cbx_3
this.cbx_2=create cbx_2
this.cbx_1=create cbx_1
this.cb_exit=create cb_exit
this.cb_save=create cb_save
this.cb_dele=create cb_dele
this.cb_add=create cb_add
this.st_title=create st_title
this.dw_1=create dw_1
this.gb_2=create gb_2
this.gb_1=create gb_1
this.Control[]={this.st_1,&
this.rb_2,&
this.rb_1,&
this.cbx_9,&
this.cbx_8,&
this.cbx_7,&
this.cbx_6,&
this.cbx_5,&
this.cbx_4,&
this.cbx_3,&
this.cbx_2,&
this.cbx_1,&
this.cb_exit,&
this.cb_save,&
this.cb_dele,&
this.cb_add,&
this.st_title,&
this.dw_1,&
this.gb_2,&
this.gb_1}
end on

on win_zdsh_shtj.destroy
destroy(this.st_1)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.cbx_9)
destroy(this.cbx_8)
destroy(this.cbx_7)
destroy(this.cbx_6)
destroy(this.cbx_5)
destroy(this.cbx_4)
destroy(this.cbx_3)
destroy(this.cbx_2)
destroy(this.cbx_1)
destroy(this.cb_exit)
destroy(this.cb_save)
destroy(this.cb_dele)
destroy(this.cb_add)
destroy(this.st_title)
destroy(this.dw_1)
destroy(this.gb_2)
destroy(this.gb_1)
end on

event open;Fun_Windows_Position(this)
dw_1.SetTransObject(sqlca)
Is_ShJytype = win_zdsh_gcsd.Is_ShJytype
Is_ShAdd = win_zdsh_gcsd.Is_ShAdd

CheckBox lcbx_Now[]
int li_i

lcbx_Now[1] = cbx_1
lcbx_Now[2] = cbx_2
lcbx_Now[3] = cbx_3
lcbx_Now[4] = cbx_4
lcbx_Now[5] = cbx_5
lcbx_Now[6] = cbx_6
lcbx_Now[7] = cbx_7
lcbx_Now[8] = cbx_8
lcbx_Now[9] = cbx_9

string ls_NowJytype,ls_NowShgc,ls_NowZdsh,ls_NowStr
int li_NowNrid,li_ZdCount
ls_NowJytype = Is_ShJytype

li_ZdCount = 0
select count(*) into :li_ZdCount from a_zdsh_zdmc where jytype = :ls_NowJytype;
if li_ZdCount < 1 then
	cb_add.Enabled = false
	cb_dele.Enabled = false
end if

DataWindowChild ldw_Child
dw_1.GetChild('zd',ldw_Child)
ldw_Child.SetTransObject(sqlca)
ldw_Child.Retrieve(ls_NowJytype)
if Is_ShAdd = 'ADD' then
	rb_2.Checked = true
	for li_i = 1 to 9
	   lcbx_Now[li_i].Checked = false
	next
	lcbx_Now[1].Checked = true
	lcbx_Now[3].Checked = true
	ls_NowShgc = '101000000'
	select Max(id) into :li_NowNrid from a_zdsh_nr;
	if isnull(li_NowNrid) or li_NowNrid < 0 then   
	   li_NowNrid = 0
	end if
	li_NowNrid = li_NowNrid + 1
	Ii_ShNrid = li_NowNrid
	insert into a_zdsh_nr(id,jytype) values (:li_NowNrid,:ls_NowJytype);
end if

if Is_ShAdd = 'EDIT' then   
   Ii_ShNrid = win_zdsh_gcsd.Ii_ShNrid
	li_NowNrid = Ii_ShNrid
	select shgc,zdsh into :ls_NowShgc,:ls_NowZdsh from a_zdsh_nr where id = :li_NowNrid;
	if ls_NowZdsh = 'Y' then   
	   rb_2.Checked = true
	else
	   rb_1.Checked = true
	end if
	for li_i = 1 to 9
	   ls_NowStr = mid(ls_NowShgc,li_i,1)
		if ls_NowStr = '1' then   
		   lcbx_Now[li_i].Checked = true
		else
		   lcbx_Now[li_i].Checked = false
		end if
	next
	if li_ZdCount > 0 then
		dw_1.Retrieve(li_NowNrid)
	end if
end if

end event

type st_1 from statictext within win_zdsh_shtj
integer x = 137
integer y = 44
integer width = 370
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 128
long backcolor = 33552359
boolean enabled = false
string text = "ÉóºË·½Ê½:"
alignment alignment = right!
boolean focusrectangle = false
end type

type rb_2 from radiobutton within win_zdsh_shtj
integer x = 1189
integer y = 48
integer width = 434
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 128
long backcolor = 33552359
string text = "×Ô¶¯ÉóºË"
end type

type rb_1 from radiobutton within win_zdsh_shtj
integer x = 645
integer y = 44
integer width = 434
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 128
long backcolor = 33552359
string text = "ÊÖ¶¯ÉóºË"
end type

type cbx_9 from checkbox within win_zdsh_shtj
integer x = 2446
integer y = 1176
integer width = 576
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "Ëù³¤"
end type

type cbx_8 from checkbox within win_zdsh_shtj
integer x = 2446
integer y = 1076
integer width = 576
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "¸±Ëù³¤"
end type

type cbx_7 from checkbox within win_zdsh_shtj
integer x = 2446
integer y = 976
integer width = 576
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "×Ü¹¤³ÌÊ¦"
end type

type cbx_6 from checkbox within win_zdsh_shtj
integer x = 2446
integer y = 876
integer width = 576
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "ÖúÀí×Ü¹¤³ÌÊ¦"
end type

type cbx_5 from checkbox within win_zdsh_shtj
integer x = 2446
integer y = 776
integer width = 576
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "ËùÔðÈÎÊ¦"
end type

type cbx_4 from checkbox within win_zdsh_shtj
integer x = 2446
integer y = 676
integer width = 576
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "ËùÖúÀíÔðÈÎÊ¦"
end type

type cbx_3 from checkbox within win_zdsh_shtj
integer x = 2446
integer y = 576
integer width = 576
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "ÊÒÔðÈÎÊ¦"
end type

type cbx_2 from checkbox within win_zdsh_shtj
integer x = 2446
integer y = 476
integer width = 576
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "ÊÒÖúÀíÔðÈÎÊ¦"
end type

type cbx_1 from checkbox within win_zdsh_shtj
integer x = 2446
integer y = 376
integer width = 576
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "¼ìÑéÔ±"
end type

type cb_exit from commandbutton within win_zdsh_shtj
integer x = 1966
integer y = 1380
integer width = 343
integer height = 144
integer taborder = 10
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È¡Ïû"
end type

event clicked;if Is_ShAdd = 'ADD' then
	Delete from a_zdsh_nr where id = :Ii_ShNrid;
end if
close(parent)
end event

type cb_save from commandbutton within win_zdsh_shtj
integer x = 1381
integer y = 1380
integer width = 357
integer height = 144
integer taborder = 20
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È·¶¨"
end type

event clicked;string ls_NowShgc,ls_NowZdsh,ls_NowShtj
string ls_NowJy1,ls_NowJy2,ls_NowJy3,ls_NowJy4,ls_NowJy5,ls_NowJy6
string ls_NowJy7,ls_NowJy8,ls_NowJy9
string ls_NowZd,ls_NowTj,ls_NowNr
long   ll_NowRow
int li_i,li_NowCount,li_NowNrid
string ls_NowStr
dw_1.AcceptText()
ls_NowStr = ''
li_NowCount = 0
li_NowNrid = Ii_ShNrid
CheckBox lcbx_Now[]

lcbx_Now[1] = cbx_1
lcbx_Now[2] = cbx_2
lcbx_Now[3] = cbx_3
lcbx_Now[4] = cbx_4
lcbx_Now[5] = cbx_5
lcbx_Now[6] = cbx_6
lcbx_Now[7] = cbx_7
lcbx_Now[8] = cbx_8
lcbx_Now[9] = cbx_9

for li_i = 1 to 9
   if lcbx_Now[li_i].Checked then   
	   ls_NowStr = ls_NowStr + '1'
		li_NowCount = li_NowCount + 1
	else
	   ls_NowStr = ls_NowStr + '0'
   end if
next

if li_NowCount < 2 then   
   MessageBox("ÌáÊ¾","ÉóºËÂ·¾¶ÉèÖÃÓÐ´íÎó,ÖÁÉÙÒªÓÐ2¸öÉóºË¼¶±ð±»Ñ¡ÖÐ!")
	return
end if
ls_NowJy1 = mid(ls_NowStr,1,1)
ls_NowJy2 = mid(ls_NowStr,2,1)
ls_NowJy3 = mid(ls_NowStr,3,1)
ls_NowJy4 = mid(ls_NowStr,4,1)
ls_NowJy5 = mid(ls_NowStr,5,1)
ls_NowJy6 = mid(ls_NowStr,6,1)
ls_NowJy7 = mid(ls_NowStr,7,1)
ls_NowJy8 = mid(ls_NowStr,8,1)
ls_NowJy9 = mid(ls_NowStr,9,1)

ls_NowShgc = ls_NowStr

for ll_NowRow = 1 to dw_1.RowCount()
	ls_NowZd = dw_1.GetItemString(ll_NowRow,'zd')
	ls_NowTj = dw_1.GetItemString(ll_NowRow,'tj')
	ls_NowNr = dw_1.GetItemString(ll_NowRow,'nr')
	if isnull(ls_NowZd) or ls_NowZd = '' or isnull(ls_NowTj) or ls_NowTj = '' or isnull(ls_NowNr) or ls_NowNr = '' then
		MessageBox("ÌáÊ¾","Ìõ¼þÖÐ¸÷Ïî²»ÄÜ´æÔÚ¿ÕµÄÄÚÈÝ,Çë¼ì²é!")
		return
	end if
next

if rb_2.Checked then   
   ls_NowZdsh = 'Y'
else
   ls_NowZdsh = 'N'
end if

if dw_1.RowCount() > 0 then   
   ls_NowShtj = 'Y'
else
   ls_NowShtj = 'N'
end if

if dw_1.Update() = 1 then   
   update a_zdsh_nr set shgc = :ls_NowShgc,zdsh = :ls_NowZdsh,shtj = :ls_NowShtj,
	                     jy1 = :ls_NowJy1,jy2 = :ls_NowJy2,jy3 = :ls_NowJy3,
								jy4 = :ls_NowJy4,jy5 = :ls_NowJy5,jy6 = :ls_NowJy6,
								jy7 = :ls_NowJy7,jy8 = :ls_NowJy8,jy9 = :ls_NowJy9 
	where id = :li_NowNrId;
	if sqlca.sqlcode = 0 then   
	   commit;
	else
	   RollBack;
		MessageBox("ÌáÊ¾","¸üÐÂÊ§°Ü")
		return
	end if
else
   Rollback;
	MessageBox("ÌáÊ¾","¸üÐÂÊ§°Ü!")
	return
end if
win_zdsh_gcsd.dw_1.Retrieve(Is_ShJytype)
close(parent)

end event

type cb_dele from commandbutton within win_zdsh_shtj
integer x = 795
integer y = 1380
integer width = 357
integer height = 144
integer taborder = 30
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "É¾³ýÌõ¼þ"
end type

event clicked;long ll_NowRow
ll_NowRow = dw_1.GetRow()
if ll_NowRow < 1 then
	MessageBox("ÌáÊ¾","Ñ¡ÔñÄ³Ò»¸öÌõ¼þ²Å¿ÉÒÔ½øÐÐÉ¾³ý!")
	return
end if
if MessageBox("ÌáÊ¾","ÊÇ·ñÈ·ÈÏÉ¾³ýµÚ"+string(ll_NowRow)+"ÐÐÌõ¼þ?",Question!,OKCANCEL!) = 1 then
	dw_1.DeleteRow(ll_NowRow)
end if
end event

type cb_add from commandbutton within win_zdsh_shtj
integer x = 183
integer y = 1380
integer width = 384
integer height = 144
integer taborder = 60
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "Ôö¼ÓÌõ¼þ"
end type

event clicked;long ll_InsertRow,ll_NowRow,ll_RowCount
int li_NowId,li_MaxId
li_MaxId = 0
ll_RowCount = dw_1.RowCount()
for ll_NowRow = 1 to ll_RowCount
	li_NowId = dw_1.GetItemNumber(ll_NowRow,'id')
	if li_NowId > li_MaxId then
		li_MaxId = li_NowId
	end if
next
li_NowId = li_MaxId + 1

ll_InsertRow = dw_1.InsertRow(0)
dw_1.SetItem(ll_InsertRow,'id',li_NowId)
dw_1.SetItem(ll_InsertRow,'nrid',Ii_ShNrid)
dw_1.ScrollToRow(ll_InsertRow)
end event

type st_title from statictext within win_zdsh_shtj
integer x = 105
integer y = 184
integer width = 2299
integer height = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
boolean enabled = false
string text = "Ñ¹Á¦ÈÝÆ÷¶¨ÆÚ¼ìÑé×Ô¶¯ÉóºËÌõ¼þÉèÖÃ"
boolean focusrectangle = false
end type

type dw_1 from datawindow within win_zdsh_shtj
integer x = 105
integer y = 276
integer width = 2299
integer height = 1044
integer taborder = 50
string dataobject = "dw_zdsh_shtj"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
end type

type gb_2 from groupbox within win_zdsh_shtj
integer x = 105
integer width = 1586
integer height = 136
integer taborder = 1
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 128
long backcolor = 33552359
end type

type gb_1 from groupbox within win_zdsh_shtj
integer x = 2414
integer y = 244
integer width = 626
integer height = 1076
integer taborder = 40
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 33552359
string text = "ÉóºËÂ·¾¶"
end type

