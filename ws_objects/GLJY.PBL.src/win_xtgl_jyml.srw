$PBExportHeader$win_xtgl_jyml.srw
$PBExportComments$¼ìÑéÃÅÀà
forward
global type win_xtgl_jyml from window
end type
type ddlb_mlmc from dropdownlistbox within win_xtgl_jyml
end type
type ddlb_jymk from dropdownlistbox within win_xtgl_jyml
end type
type st_1 from statictext within win_xtgl_jyml
end type
type st_3 from statictext within win_xtgl_jyml
end type
type st_2 from statictext within win_xtgl_jyml
end type
type st_title from statictext within win_xtgl_jyml
end type
type st_xt from statictext within win_xtgl_jyml
end type
type st_date from statictext within win_xtgl_jyml
end type
type sle_mldh from singlelineedit within win_xtgl_jyml
end type
type sle_mlid from singlelineedit within win_xtgl_jyml
end type
type dw_1 from datawindow within win_xtgl_jyml
end type
type cb_exit from commandbutton within win_xtgl_jyml
end type
type cb_cancel from commandbutton within win_xtgl_jyml
end type
type cb_add from commandbutton within win_xtgl_jyml
end type
type cb_edit from commandbutton within win_xtgl_jyml
end type
type cb_dele from commandbutton within win_xtgl_jyml
end type
type cb_ok from commandbutton within win_xtgl_jyml
end type
type st_space from statictext within win_xtgl_jyml
end type
end forward

global type win_xtgl_jyml from window
integer x = 9
integer y = 4
integer width = 3643
integer height = 2412
windowtype windowtype = child!
long backcolor = 33552359
ddlb_mlmc ddlb_mlmc
ddlb_jymk ddlb_jymk
st_1 st_1
st_3 st_3
st_2 st_2
st_title st_title
st_xt st_xt
st_date st_date
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
global win_xtgl_jyml win_xtgl_jyml

event open;st_xt.text = gs_jydw
st_date.text=string(date(fun_datetime('date')),'yyyyÄêmmÔÂddÈÕ')

st_title.text = "Éè±¸Àà±ð²é¿´"
settransobject(dw_1,sqlca)
retrieve(dw_1)

sle_mlid.enabled = false
sle_mldh.enabled = false
ddlb_mlmc.enabled = false
ddlb_jymk.enabled = false

cb_ok.visible = false
cb_cancel.visible = false


string tempstr1,tempstr2
DECLARE temp_jy CURSOR FOR
	SELECT id,mc
	FROM a_jyml_id ORDER BY id;
OPEN temp_jy;
ddlb_mlmc.additem(space(110))
FETCH temp_jy INTO :tempstr1,:tempstr2;
DO WHILE SQLCA.SQLCODE = 0
   ddlb_mlmc.additem(tempstr2 + space(100) + tempstr1)
   FETCH temp_jy INTO :tempstr1,:tempstr2;
LOOP
CLOSE temp_jy;
//
//
setnull(gs_keyno)
setnull(gs_wh_dwbh)

end event

on win_xtgl_jyml.create
this.ddlb_mlmc=create ddlb_mlmc
this.ddlb_jymk=create ddlb_jymk
this.st_1=create st_1
this.st_3=create st_3
this.st_2=create st_2
this.st_title=create st_title
this.st_xt=create st_xt
this.st_date=create st_date
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
this.Control[]={this.ddlb_mlmc,&
this.ddlb_jymk,&
this.st_1,&
this.st_3,&
this.st_2,&
this.st_title,&
this.st_xt,&
this.st_date,&
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

on win_xtgl_jyml.destroy
destroy(this.ddlb_mlmc)
destroy(this.ddlb_jymk)
destroy(this.st_1)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_title)
destroy(this.st_xt)
destroy(this.st_date)
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

type ddlb_mlmc from dropdownlistbox within win_xtgl_jyml
boolean visible = false
integer x = 2139
integer y = 1868
integer width = 1083
integer height = 484
integer taborder = 90
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean sorted = false
boolean vscrollbar = true
end type

type ddlb_jymk from dropdownlistbox within win_xtgl_jyml
boolean visible = false
integer x = 1335
integer y = 1860
integer width = 503
integer height = 484
integer taborder = 20
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 16777215
boolean vscrollbar = true
string item[] = {"¶¨ÆÚ¼ìÑé","°²×°¼à¼ì","ÖÆÔì¼à¼ì","ÆäËü¼ìÑé","½ø³ö¿Ú¼ìÑé"}
end type

type st_1 from statictext within win_xtgl_jyml
boolean visible = false
integer x = 1010
integer y = 1872
integer width = 434
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
boolean enabled = false
string text = "¼ìÑéÖÖÀà"
boolean focusrectangle = false
end type

type st_3 from statictext within win_xtgl_jyml
boolean visible = false
integer x = 1902
integer y = 1872
integer width = 187
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
boolean enabled = false
string text = "Ãû³Æ"
boolean focusrectangle = false
end type

type st_2 from statictext within win_xtgl_jyml
boolean visible = false
integer x = 366
integer y = 1872
integer width = 174
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 33552359
boolean enabled = false
string text = "´úºÅ"
boolean focusrectangle = false
end type

type st_title from statictext within win_xtgl_jyml
integer x = 562
integer y = 140
integer width = 1266
integer height = 168
integer textsize = -28
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

type st_xt from statictext within win_xtgl_jyml
integer x = 1989
integer y = 140
integer width = 1189
integer height = 76
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 128
long backcolor = 16777215
boolean enabled = false
string text = "ÆóÒµÖÇÄÜ»¯¹ÜÀíÏµÍ³"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_date from statictext within win_xtgl_jyml
integer x = 1989
integer y = 240
integer width = 1189
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 128
long backcolor = 16777215
boolean enabled = false
string text = "1999Äê1ÔÂ20ÈÕ"
alignment alignment = center!
boolean focusrectangle = false
end type

type sle_mldh from singlelineedit within win_xtgl_jyml
boolean visible = false
integer x = 549
integer y = 1856
integer width = 416
integer height = 104
integer taborder = 30
integer textsize = -14
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 8388608
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type sle_mlid from singlelineedit within win_xtgl_jyml
boolean visible = false
integer x = 370
integer y = 1788
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

type dw_1 from datawindow within win_xtgl_jyml
integer x = 357
integer y = 496
integer width = 2875
integer height = 1428
integer taborder = 50
string dataobject = "dw_xtgl_jyml"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;if right(dwo.name,2) = '_t' then 
	fun_sort(this,dwo.name)
	selectrow(0,false)
	setnull(gs_keyno)
	setnull(gs_wh_dwbh)
	return
end if

if row > 0 then
   selectrow(0,false)
	selectrow(row,true)
	gs_keyno = getitemstring(row,'jymlid')
	gs_wh_dwbh = getitemstring(row,'jymk')
else
	setnull(gs_keyno)
	setnull(gs_wh_dwbh)
end if

end event

type cb_exit from commandbutton within win_xtgl_jyml
event clicked pbm_bnclicked
integer x = 2889
integer y = 380
integer width = 343
integer height = 100
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË³ö"
boolean cancel = true
end type

event clicked;setnull(gs_keyno)
setnull(gs_wh_dwbh)
close(win_xtgl_jyml)
end event

type cb_cancel from commandbutton within win_xtgl_jyml
boolean visible = false
integer x = 2107
integer y = 2076
integer width = 402
integer height = 136
integer taborder = 60
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
boolean enabled = false
string text = "·ÅÆú"
boolean cancel = true
end type

event clicked;dw_1.enabled = true

sle_mlid.text = ''
sle_mldh.text = ''
sle_mlid.enabled = false
sle_mldh.enabled = false
ddlb_mlmc.enabled = false
ddlb_mlmc.selectitem(0)
ddlb_jymk.selectitem(0)
ddlb_jymk.enabled = false

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

setnull(gs_keyno)
setnull(gs_wh_dwbh)

end event

type cb_add from commandbutton within win_xtgl_jyml
boolean visible = false
integer x = 891
integer y = 2080
integer width = 343
integer height = 128
integer taborder = 110
integer textsize = -11
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Ôö¼Ó"
boolean default = true
end type

event clicked;long  dwlastno

//select max(jymlid) into :dwlastno from a_jyml ;
//if sqlca.sqlcode = 0  then
//   if isnull(dwlastno) then
//	   sle_mlid.text = '101'
//   else
//	   sle_mlid.text = string(long(dwlastno)+1)
//   end if
//else
//	sle_mlid.text = '101'
//end if


dw_1.enabled = false
gi_modimark = 1
sle_mlid.enabled = true
sle_mldh.enabled = true
ddlb_mlmc.enabled = true
ddlb_jymk.enabled = true
//
sle_mldh.text = ''
ddlb_mlmc.text = ''
ddlb_jymk.text = ''
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

type cb_edit from commandbutton within win_xtgl_jyml
boolean visible = false
integer x = 1408
integer y = 2080
integer width = 343
integer height = 128
integer taborder = 40
integer textsize = -11
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "ÐÞ¸Ä"
end type

event clicked;if dw_1.rowcount() <= 0 then
   return
end if	

integer currno

if isnull(gs_keyno) or trim(gs_keyno) = '' then
   messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÐÞ¸ÄµÄÉè±¸Àà±ðÃû³Æ£¡')	
	return
end if	

dw_1.enabled = false

string jymlidstr,jymldhstr,jymlmkstr,jymlmcstr

select jymlid,jymldh,jymk,jymlmc
into   :jymlidstr,:jymldhstr,:jymlmkstr,:jymlmcstr
from   a_jyml
where  jymlid = :gs_keyno and jymk like :gs_wh_dwbh;
ddlb_mlmc.text = jymlmcstr + space(100) + jymlidstr
sle_mldh.text = jymldhstr
ddlb_jymk.text = jymlmkstr

gi_modimark = 2
sle_mlid.enabled = true
sle_mldh.enabled = true
ddlb_mlmc.enabled = true
ddlb_jymk.enabled = true

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

type cb_dele from commandbutton within win_xtgl_jyml
boolean visible = false
integer x = 1925
integer y = 2080
integer width = 343
integer height = 128
integer taborder = 80
integer textsize = -11
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "É¾³ý"
end type

event clicked;if dw_1.rowcount() <= 0 then
   return
end if	

integer currno

if isnull(gs_keyno) or trim(gs_keyno) = '' then
   messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÉ¾³ýµÄÉè±¸Àà±ð£¡')	
	return
end if	

dw_1.enabled = false

string jymlidstr,jymldhstr,jymlmkstr,jymlmcstr

select jymlid,jymldh,jymk,jymlmc
into   :jymlidstr,:jymldhstr,:jymlmkstr,:jymlmcstr
from   a_jyml
where  jymlid = :gs_keyno and jymk like :gs_wh_dwbh;
ddlb_mlmc.text = jymlmcstr + space(100) + jymlidstr
sle_mldh.text = jymldhstr
ddlb_jymk.text = jymlmkstr

gi_modimark = 3
sle_mlid.enabled = true
sle_mldh.enabled = true
ddlb_mlmc.enabled = true
ddlb_jymk.enabled = true

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

type cb_ok from commandbutton within win_xtgl_jyml
boolean visible = false
integer x = 1147
integer y = 2076
integer width = 402
integer height = 136
integer taborder = 70
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
boolean enabled = false
string text = "È·ÈÏ"
boolean default = true
end type

event clicked;string mlid,mldh,mlmc,jymk
integer currnum,okmark,leadnum

okmark = 0
mlid = right(trim(ddlb_mlmc.text),1)
mldh = trim(sle_mldh.text)
mlmc = trim(left(trim(ddlb_mlmc.text),80))
jymk = trim(ddlb_jymk.text)

choose case gi_modimark
	case 3 
        if messagebox("ÏµÍ³ÌáÊ¾","È·ÈÏÊÇ·ñÉ¾³ý£¿",Exclamation!,YesNo!,2)=1 then
           delete from a_jyml where jymlid = :gs_keyno and jymk like :gs_wh_dwbh;
        end if
   case 2 
        if mlid = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Éè±¸Àà±ð±àºÅ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
          if mldh = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Éè±¸Àà±ð´úºÅ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		  if mlmc = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Éè±¸Àà±ðÃû³Æ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
        if jymk = '' or isnull(jymk) then
		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑéÖÖÀà²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		  
		  update a_jyml set jymlid = :mlid,jymldh=:mldh,jymlmc=:mlmc,jymk=:jymk
		  where jymlid=:gs_keyno and jymk like :gs_wh_dwbh;
		  
   case 1 
        if mlid = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Éè±¸Àà±ð±àºÅ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
          if mldh = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Éè±¸Àà±ð´úºÅ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		  if mlmc = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','Éè±¸Àà±ðÃû³Æ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
		  if jymk = ''  or isnull(jymk) then
		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑéÖÖÀà²»ÄÜÎª¿Õ£¡')
			  return
		  end if
  	     
//			 select count(*) into :currnum from a_jyml where jymlid = :mlid ;
//	        if currnum=1  then
//		      messagebox('ÏµÍ³ÌáÊ¾','¸ÃÉè±¸Àà±ðÒÑ´æÔÚ£¡')
//	        return
//           end if
	 
		  insert into a_jyml (jymlid,jymldh,jymlmc,jymk) values (:mlid,:mldh,:mlmc,:jymk);
	
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
sle_mlid.enabled = false
sle_mldh.enabled = false
ddlb_mlmc.enabled = false
ddlb_mlmc.selectitem(0)
ddlb_jymk.selectitem(0)
ddlb_jymk.enabled = false

dw_1.enabled = true
setnull(gs_keyno)
setnull(gs_wh_dwbh)
end event

type st_space from statictext within win_xtgl_jyml
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

