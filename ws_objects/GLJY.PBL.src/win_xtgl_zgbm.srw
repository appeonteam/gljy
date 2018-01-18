$PBExportHeader$win_xtgl_zgbm.srw
$PBExportComments$Ö÷¹Ü²¿ÃÅ
forward
global type win_xtgl_zgbm from window
end type
type st_3 from statictext within win_xtgl_zgbm
end type
type st_2 from statictext within win_xtgl_zgbm
end type
type st_title from statictext within win_xtgl_zgbm
end type
type st_xt from statictext within win_xtgl_zgbm
end type
type st_date from statictext within win_xtgl_zgbm
end type
type sle_mlmc from singlelineedit within win_xtgl_zgbm
end type
type sle_mldh from singlelineedit within win_xtgl_zgbm
end type
type sle_mlid from singlelineedit within win_xtgl_zgbm
end type
type dw_1 from datawindow within win_xtgl_zgbm
end type
type cb_exit from commandbutton within win_xtgl_zgbm
end type
type cb_cancel from commandbutton within win_xtgl_zgbm
end type
type cb_add from commandbutton within win_xtgl_zgbm
end type
type cb_edit from commandbutton within win_xtgl_zgbm
end type
type cb_dele from commandbutton within win_xtgl_zgbm
end type
type cb_ok from commandbutton within win_xtgl_zgbm
end type
type st_space from statictext within win_xtgl_zgbm
end type
end forward

global type win_xtgl_zgbm from window
integer x = 9
integer y = 4
integer width = 3643
integer height = 2412
windowtype windowtype = child!
long backcolor = 33552359
st_3 st_3
st_2 st_2
st_title st_title
st_xt st_xt
st_date st_date
sle_mlmc sle_mlmc
sle_mldh sle_mldh
sle_mlid sle_mlid
dw_1 dw_1
cb_exit cb_exit
cb_cancel cb_cancel
cb_add cb_add
cb_edit cb_edit
cb_dele cb_dele
cb_ok cb_ok
st_space st_space
end type
global win_xtgl_zgbm win_xtgl_zgbm

event open;st_xt.text = gs_jydw
st_date.text=string(date(fun_datetime('date')),'yyyyÄêmmÔÂddÈÕ')
st_title.text = "Ê¹ÓÃµ¥Î»Ö÷¹Ü²¿ÃÅ"
settransobject(dw_1,sqlca)
retrieve(dw_1)

sle_mlid.enabled = false
sle_mldh.enabled = false
sle_mlmc.enabled = false

cb_ok.visible = false
cb_cancel.visible = false


end event

on win_xtgl_zgbm.create
this.st_3=create st_3
this.st_2=create st_2
this.st_title=create st_title
this.st_xt=create st_xt
this.st_date=create st_date
this.sle_mlmc=create sle_mlmc
this.sle_mldh=create sle_mldh
this.sle_mlid=create sle_mlid
this.dw_1=create dw_1
this.cb_exit=create cb_exit
this.cb_cancel=create cb_cancel
this.cb_add=create cb_add
this.cb_edit=create cb_edit
this.cb_dele=create cb_dele
this.cb_ok=create cb_ok
this.st_space=create st_space
this.Control[]={this.st_3,&
this.st_2,&
this.st_title,&
this.st_xt,&
this.st_date,&
this.sle_mlmc,&
this.sle_mldh,&
this.sle_mlid,&
this.dw_1,&
this.cb_exit,&
this.cb_cancel,&
this.cb_add,&
this.cb_edit,&
this.cb_dele,&
this.cb_ok,&
this.st_space}
end on

on win_xtgl_zgbm.destroy
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_title)
destroy(this.st_xt)
destroy(this.st_date)
destroy(this.sle_mlmc)
destroy(this.sle_mldh)
destroy(this.sle_mlid)
destroy(this.dw_1)
destroy(this.cb_exit)
destroy(this.cb_cancel)
destroy(this.cb_add)
destroy(this.cb_edit)
destroy(this.cb_dele)
destroy(this.cb_ok)
destroy(this.st_space)
end on

type st_3 from statictext within win_xtgl_zgbm
integer x = 1138
integer y = 1392
integer width = 329
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
boolean enabled = false
string text = "²¿ÃÅÃû³Æ"
boolean focusrectangle = false
end type

type st_2 from statictext within win_xtgl_zgbm
integer x = 334
integer y = 1388
integer width = 334
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
boolean enabled = false
string text = " ²¿ÃÅ±àºÅ"
boolean focusrectangle = false
end type

type st_title from statictext within win_xtgl_zgbm
integer x = 448
integer y = 136
integer width = 1618
integer height = 168
integer textsize = -26
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 255
long backcolor = 16777215
boolean enabled = false
string text = "Ëð  Òæ  ±í"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_xt from statictext within win_xtgl_zgbm
integer x = 1989
integer y = 132
integer width = 1189
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean enabled = false
string text = "ÆóÒµÖÇÄÜ»¯¹ÜÀíÏµÍ³"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_date from statictext within win_xtgl_zgbm
integer x = 1989
integer y = 232
integer width = 1189
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean enabled = false
string text = "1999Äê1ÔÂ20ÈÕ"
alignment alignment = center!
boolean focusrectangle = false
end type

type sle_mlmc from singlelineedit within win_xtgl_zgbm
integer x = 1472
integer y = 1372
integer width = 1751
integer height = 104
integer taborder = 20
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type sle_mldh from singlelineedit within win_xtgl_zgbm
integer x = 677
integer y = 1372
integer width = 421
integer height = 104
integer taborder = 30
integer textsize = -14
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 8388608
long backcolor = 16777215
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type sle_mlid from singlelineedit within win_xtgl_zgbm
boolean visible = false
integer x = 370
integer y = 1364
integer width = 512
integer height = 104
integer taborder = 10
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within win_xtgl_zgbm
integer x = 357
integer y = 384
integer width = 2875
integer height = 912
integer taborder = 50
string dataobject = "dw_xtgl_zgbm"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;if row > 0 then
   selectrow(0,false)
	selectrow(row,true)
	gs_keyno = getitemstring(row,'zgbmid')
else
	setnull(gs_keyno)
end if

end event

type cb_exit from commandbutton within win_xtgl_zgbm
event clicked pbm_bnclicked
integer x = 2441
integer y = 1656
integer width = 343
integer height = 128
integer taborder = 90
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË³ö"
boolean cancel = true
end type

event clicked;close(win_xtgl_zgbm)
end event

type cb_cancel from commandbutton within win_xtgl_zgbm
integer x = 2080
integer y = 1652
integer width = 402
integer height = 136
integer taborder = 60
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
boolean enabled = false
string text = "·ÅÆú"
boolean cancel = true
end type

event clicked;dw_1.enabled = true

sle_mlid.text = ''
sle_mldh.text = ''
sle_mlmc.text = ''
sle_mlid.enabled = false
sle_mldh.enabled = false
sle_mlmc.enabled = false

cb_ok.visible = false
cb_ok.enabled = false
cb_cancel.visible = false
cb_cancel.enabled = false

cb_exit.visible = true
cb_exit.enabled = true
cb_dele.visible = true
cb_dele.enabled = true
cb_edit.visible = true
cb_edit.enabled = true
cb_add.visible = true
cb_add.enabled = true

gs_keyno = ''

end event

type cb_add from commandbutton within win_xtgl_zgbm
integer x = 891
integer y = 1656
integer width = 343
integer height = 128
integer taborder = 100
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "Ôö¼Ó"
boolean default = true
end type

event clicked;string  dwlastno

select max(zgbmid) into :dwlastno from a_zgbm;

if sqlca.sqlcode = 0  then
   if isnull(dwlastno) then
	   sle_mldh.text = '101'
   else
	   sle_mldh.text = string(long(dwlastno)+1)
   end if
else
	sle_mldh.text = '101'
end if


dw_1.enabled = false
gi_modimark = 1
sle_mlid.enabled = true
sle_mldh.enabled = true
sle_mlmc.enabled = true
//
//sle_mldh.text = ''
sle_mlmc.text = ''

//
cb_ok.visible = true
cb_ok.enabled = true
cb_cancel.visible = true
cb_cancel.enabled = true
cb_exit.visible = false
cb_exit.enabled = false
cb_dele.visible = false
cb_dele.enabled = false
cb_edit.visible = false
cb_edit.enabled = false
cb_add.visible = false
cb_add.enabled = false

end event

type cb_edit from commandbutton within win_xtgl_zgbm
integer x = 1408
integer y = 1656
integer width = 343
integer height = 128
integer taborder = 40
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÐÞ¸Ä"
end type

event clicked;if dw_1.rowcount() <= 0 then
   return
end if	

integer currno

if isnull(gs_keyno) or trim(gs_keyno) = '' then
   messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÐÞ¸ÄµÄÖ÷¹Ü²¿ÃÅÃû³Æ£¡')	
	return
end if	

dw_1.enabled = false

select zgbmid,zgbmmc
into   :sle_mldh.text,:sle_mlmc.text
from   a_zgbm
where  zgbmid = :gs_keyno;

gi_modimark = 2
sle_mlid.enabled = true
sle_mldh.enabled = true
sle_mlmc.enabled = true

cb_ok.visible = true
cb_ok.enabled = true
cb_cancel.visible = true
cb_cancel.enabled = true

cb_exit.visible = false
cb_exit.enabled = false
cb_dele.visible = false
cb_dele.enabled = false
cb_edit.visible = false
cb_edit.enabled = false
cb_add.visible = false
cb_add.enabled = false

end event

type cb_dele from commandbutton within win_xtgl_zgbm
integer x = 1925
integer y = 1656
integer width = 343
integer height = 128
integer taborder = 80
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "É¾³ý"
end type

event clicked;if dw_1.rowcount() <= 0 then
   return
end if	

integer currno

if isnull(gs_keyno) or trim(gs_keyno) = '' then
   messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÉ¾³ýµÄÖ÷¹Ü²¿ÃÅ£¡')	
	return
end if	

dw_1.enabled = false

select zgbmid,zgbmmc
into   :sle_mldh.text,:sle_mlmc.text
from   a_zgbm
where  zgbmid = :gs_keyno;

gi_modimark = 3
sle_mlid.enabled = true
sle_mldh.enabled = true
sle_mlmc.enabled = true

cb_ok.visible = true
cb_ok.enabled = true
cb_cancel.visible = true
cb_cancel.enabled = true

cb_exit.visible = false
cb_exit.enabled = false
cb_dele.visible = false
cb_dele.enabled = false
cb_edit.visible = false
cb_edit.enabled = false
cb_add.visible = false
cb_add.enabled = false


//
end event

type cb_ok from commandbutton within win_xtgl_zgbm
integer x = 1189
integer y = 1652
integer width = 402
integer height = 136
integer taborder = 70
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
boolean enabled = false
string text = "È·ÈÏ"
boolean default = true
end type

event clicked;string mlid,mldh,mlmc
integer currnum,okmark,leadnum

okmark = 0
mlid = trim(sle_mlid.text)
mldh = trim(sle_mldh.text)
mlmc = trim(sle_mlmc.text)

choose case gi_modimark
	case 3 
        if messagebox("ÏµÍ³ÌáÊ¾","È·ÈÏÊÇ·ñÉ¾³ý£¿",Exclamation!,YesNo!,2)=1 then
           delete from a_zgbm where zgbmid = :gs_keyno;
			  delete from a_zgbmmx where zgbmid = :gs_keyno;
        end if
   case 2 
//        if mlid = '' then
//		     messagebox('ÏµÍ³ÌáÊ¾','Àà±ð±àºÅ²»ÄÜÎª¿Õ£¡')
//			  return
//		  end if
          if mldh = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Ö÷¹Ü²¿ÃÅ±àºÅ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		  if mlmc = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Ö÷¹Ü²¿ÃÅÃû³Æ²»ÄÜÎª¿Õ£¡')
			  return
		  end if

		  update a_zgbm set zgbmid=:mldh,zgbmmc=:mlmc
		  where zgbmid=:gs_keyno;
		  
		  update a_zgbmmx set zgbmid=:mldh
		  where zgbmid=:gs_keyno;
		  
   case 1 
//        if mlid = '' then
//		     messagebox('ÏµÍ³ÌáÊ¾','Àà±ð±àºÅ²»ÄÜÎª¿Õ£¡')
//			  return
//		  end if
          if mldh = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Ö÷¹Ü²¿ÃÅ±àºÅ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		  if mlmc = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Ö÷¹Ü²¿ÃÅÃû³Æ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
  	select count(*) into :currnum from a_zgbm where zgbmid = :mldh ;
	if currnum=1  then
		messagebox('ÏµÍ³ÌáÊ¾','Ö÷¹Ü²¿ÃÅ±àºÅ²»ÄÜÖØ¸´ ')
	 return
    end if 
	 
		  insert into a_zgbm (zgbmid,zgbmmc) values (:mldh,:mlmc);
	
end choose		  
if okmark = 0 then
   commit;
   retrieve(dw_1)		
else
	rollback;
	messagebox('ÏµÍ³ÌáÊ¾','¶Ô²»Æð£¡´Ë´ÎÐÞ¸ÄµÄÊý¾ÝÎ´ÄÜ¸üÐÂ£¡')
end if

cb_ok.visible = false
cb_ok.enabled = false
cb_cancel.visible = false
cb_cancel.enabled = false

cb_exit.visible = true
cb_exit.enabled = true
cb_dele.visible = true
cb_dele.enabled = true
cb_edit.visible = true
cb_edit.enabled = true
cb_add.visible = true
cb_add.enabled = true

sle_mlid.text = ''
sle_mldh.text = ''
sle_mlmc.text = ''
sle_mlid.enabled = false
sle_mldh.enabled = false
sle_mlmc.enabled = false

dw_1.enabled = true
gs_keyno = ''
end event

type st_space from statictext within win_xtgl_zgbm
integer x = 357
integer y = 72
integer width = 2880
integer height = 304
integer textsize = -28
integer weight = 700
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "·ÂËÎ_GB2312"
long backcolor = 16777215
boolean enabled = false
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

