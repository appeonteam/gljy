$PBExportHeader$win_xtgl_jymx.srw
$PBExportComments$¼ìÑéÏîÄ¿Ã÷Ï¸
forward
global type win_xtgl_jymx from window
end type
type st_5 from statictext within win_xtgl_jymx
end type
type ddlb_glbg from dropdownlistbox within win_xtgl_jymx
end type
type st_4 from statictext within win_xtgl_jymx
end type
type sle_tc from singlelineedit within win_xtgl_jymx
end type
type st_3 from statictext within win_xtgl_jymx
end type
type sle_xmhs from singlelineedit within win_xtgl_jymx
end type
type st_2 from statictext within win_xtgl_jymx
end type
type st_1 from statictext within win_xtgl_jymx
end type
type st_date from statictext within win_xtgl_jymx
end type
type st_xt from statictext within win_xtgl_jymx
end type
type st_title from statictext within win_xtgl_jymx
end type
type dw_2 from datawindow within win_xtgl_jymx
end type
type tv_1 from treeview within win_xtgl_jymx
end type
type sle_bmname from singlelineedit within win_xtgl_jymx
end type
type sle_bmcode from singlelineedit within win_xtgl_jymx
end type
type dw_1 from datawindow within win_xtgl_jymx
end type
type cb_exit from commandbutton within win_xtgl_jymx
end type
type cb_cancel from commandbutton within win_xtgl_jymx
end type
type cb_add from commandbutton within win_xtgl_jymx
end type
type cb_edit from commandbutton within win_xtgl_jymx
end type
type cb_dele from commandbutton within win_xtgl_jymx
end type
type st_space from statictext within win_xtgl_jymx
end type
type cb_ok from commandbutton within win_xtgl_jymx
end type
end forward

global type win_xtgl_jymx from window
integer x = 9
integer y = 4
integer width = 3643
integer height = 2412
windowtype windowtype = child!
long backcolor = 33552359
st_5 st_5
ddlb_glbg ddlb_glbg
st_4 st_4
sle_tc sle_tc
st_3 st_3
sle_xmhs sle_xmhs
st_2 st_2
st_1 st_1
st_date st_date
st_xt st_xt
st_title st_title
dw_2 dw_2
tv_1 tv_1
sle_bmname sle_bmname
sle_bmcode sle_bmcode
dw_1 dw_1
cb_exit cb_exit
cb_cancel cb_cancel
cb_add cb_add
cb_edit cb_edit
cb_dele cb_dele
st_space st_space
cb_ok cb_ok
end type
global win_xtgl_jymx win_xtgl_jymx

type variables
string gi_lbmc
end variables

event open;st_xt.text = gs_jydw
st_date.text=string(date(fun_datetime('date')),'yyyyÄêmmÔÂddÈÕ')
st_title.text = "ÊÕ·ÑÏîÄ¿Ã÷Ï¸"
dw_2.settransobject(sqlca)
dw_2.retrieve()

settransobject(dw_1,sqlca)
sle_bmcode.enabled = false
sle_bmname.enabled = false
sle_xmhs.enabled = false
sle_tc.enabled = false
ddlb_glbg.enabled = false

cb_ok.visible = false
cb_cancel.visible = false

if dw_2.retrieve() > 0 then
string dwmcstr
dwmcstr = dw_2.getitemstring(1,'bmmc')
gs_wh_dwbh = dw_2.getitemstring(1,'bmid')
gi_modimark = 0

retrieve(dw_1,gs_wh_dwbh)
dw_1.modify("st_dw.text= '" + dwmcstr+ "'")
dw_1.object.bmbh_t.text='Ã÷Ï¸±àºÅ'
dw_1.object.bmmc_t.text='Ã÷Ï¸ÏîÄ¿Ãû³Æ'



///////////////////////
////////////////Õ¹¿ªTREE VIEW//////
LONG ll_newitem
integer li_rowcount,li_i,i
treeviewitem ltvi_item
string seldwmc,dwmc 
long i_root,ll_tvi

tv_1.setredraw(false)
tv_1.deleteitem(i_root)
ltvi_item.label='²¿ÃÅÉèÖÃ'
ltvi_item.pictureindex=1
ltvi_item.selectedpictureindex=1
i_root=tv_1.insertitemlast(0,ltvi_item)
 
 for i=1 to dw_2.rowcount()
 

seldwmc=dw_2.getitemstring(i,'bmmc')
	ltvi_item.label=seldwmc
	ltvi_item.pictureindex=2
   ltvi_item.selectedpictureindex=2
   ll_newitem=tv_1.insertitemlast(i_root,ltvi_item)
	
next

ll_tvi = tv_1.FindItem(RootTreeItem!,0)
tv_1.setredraw(true)
tv_1.Expanditem(ll_tvi)
end if

end event

on win_xtgl_jymx.create
this.st_5=create st_5
this.ddlb_glbg=create ddlb_glbg
this.st_4=create st_4
this.sle_tc=create sle_tc
this.st_3=create st_3
this.sle_xmhs=create sle_xmhs
this.st_2=create st_2
this.st_1=create st_1
this.st_date=create st_date
this.st_xt=create st_xt
this.st_title=create st_title
this.dw_2=create dw_2
this.tv_1=create tv_1
this.sle_bmname=create sle_bmname
this.sle_bmcode=create sle_bmcode
this.dw_1=create dw_1
this.cb_exit=create cb_exit
this.cb_cancel=create cb_cancel
this.cb_add=create cb_add
this.cb_edit=create cb_edit
this.cb_dele=create cb_dele
this.st_space=create st_space
this.cb_ok=create cb_ok
this.Control[]={this.st_5,&
this.ddlb_glbg,&
this.st_4,&
this.sle_tc,&
this.st_3,&
this.sle_xmhs,&
this.st_2,&
this.st_1,&
this.st_date,&
this.st_xt,&
this.st_title,&
this.dw_2,&
this.tv_1,&
this.sle_bmname,&
this.sle_bmcode,&
this.dw_1,&
this.cb_exit,&
this.cb_cancel,&
this.cb_add,&
this.cb_edit,&
this.cb_dele,&
this.st_space,&
this.cb_ok}
end on

on win_xtgl_jymx.destroy
destroy(this.st_5)
destroy(this.ddlb_glbg)
destroy(this.st_4)
destroy(this.sle_tc)
destroy(this.st_3)
destroy(this.sle_xmhs)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.st_date)
destroy(this.st_xt)
destroy(this.st_title)
destroy(this.dw_2)
destroy(this.tv_1)
destroy(this.sle_bmname)
destroy(this.sle_bmcode)
destroy(this.dw_1)
destroy(this.cb_exit)
destroy(this.cb_cancel)
destroy(this.cb_add)
destroy(this.cb_edit)
destroy(this.cb_dele)
destroy(this.st_space)
destroy(this.cb_ok)
end on

type st_5 from statictext within win_xtgl_jymx
integer x = 2715
integer y = 1540
integer width = 416
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "¹ØÁª±¨¸æ"
boolean focusrectangle = false
end type

type ddlb_glbg from dropdownlistbox within win_xtgl_jymx
integer x = 2729
integer y = 1620
integer width = 329
integer height = 292
integer taborder = 51
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8421376
long backcolor = 16777215
boolean vscrollbar = true
string item[] = {"Ê¹ÓÃ","²»ÏÞ"}
end type

type st_4 from statictext within win_xtgl_jymx
integer x = 2254
integer y = 1536
integer width = 466
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8421376
long backcolor = 33552359
boolean enabled = false
string text = "Ìá³É£¨Ð¡Êý£©"
boolean focusrectangle = false
end type

type sle_tc from singlelineedit within win_xtgl_jymx
integer x = 2249
integer y = 1620
integer width = 466
integer height = 104
integer taborder = 50
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within win_xtgl_jymx
integer x = 1792
integer y = 1536
integer width = 416
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "ÏîÄ¿ºËËãºÅ"
boolean focusrectangle = false
end type

type sle_xmhs from singlelineedit within win_xtgl_jymx
integer x = 1769
integer y = 1620
integer width = 475
integer height = 104
integer taborder = 40
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type st_2 from statictext within win_xtgl_jymx
integer x = 791
integer y = 1536
integer width = 635
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "ÊÕ·ÑÏîÄ¿Ã÷Ï¸Ãû³Æ"
boolean focusrectangle = false
end type

type st_1 from statictext within win_xtgl_jymx
integer x = 379
integer y = 1536
integer width = 192
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 33552359
boolean enabled = false
string text = "±àºÅ"
boolean focusrectangle = false
end type

type st_date from statictext within win_xtgl_jymx
integer x = 1989
integer y = 232
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

type st_xt from statictext within win_xtgl_jymx
integer x = 1989
integer y = 132
integer width = 1189
integer height = 76
integer textsize = -12
integer weight = 400
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

type st_title from statictext within win_xtgl_jymx
integer x = 562
integer y = 132
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

type dw_2 from datawindow within win_xtgl_jymx
boolean visible = false
integer y = 856
integer width = 1129
integer height = 992
integer taborder = 20
string dataobject = "dw_xtgl_bm"
boolean livescroll = true
end type

type tv_1 from treeview within win_xtgl_jymx
integer x = 357
integer y = 384
integer width = 1019
integer height = 1124
integer taborder = 80
integer textsize = -12
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 81324524
borderstyle borderstyle = stylelowered!
string picturename[] = {"CreateLibrary5!","Library!"}
long picturemaskcolor = 553648127
long statepicturemaskcolor = 553648127
end type

event selectionchanged;long A
string mm

treeviewitem t
A=tv_1.finditem(currenttreeitem!,0)
tv_1.getitem(A,t)

mm=string (t.label)
dw_1.reset()
dw_1.modify("st_dw.text= '" +mm+ "'")

if mm='²¿ÃÅÉèÖÃ'then 
else
	
select bmid into :gs_wh_dwbh from a_bmcode where bmmc like :mm;
dw_1.retrieve(gs_wh_dwbh)

if gi_modimark = 0  then
dw_1.retrieve(gs_wh_dwbh)

else
end if

end if

end event

type sle_bmname from singlelineedit within win_xtgl_jymx
integer x = 768
integer y = 1620
integer width = 992
integer height = 104
integer taborder = 30
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
borderstyle borderstyle = stylelowered!
end type

type sle_bmcode from singlelineedit within win_xtgl_jymx
integer x = 357
integer y = 1620
integer width = 407
integer height = 104
integer taborder = 10
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within win_xtgl_jymx
integer x = 1394
integer y = 384
integer width = 1833
integer height = 1124
integer taborder = 70
string dataobject = "dw_xtgl_bmmx"
boolean hscrollbar = true
boolean vscrollbar = true
boolean hsplitscroll = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;if row > 0 then
   selectrow(0,false)
	selectrow(row,true)
	gs_keyno = getitemstring(row,'bmmxid')
else
	setnull(gs_keyno)
end if

end event

type cb_exit from commandbutton within win_xtgl_jymx
event clicked pbm_bnclicked
integer x = 2505
integer y = 1776
integer width = 366
integer height = 132
integer taborder = 120
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË³ö"
boolean cancel = true
end type

event clicked;gs_wh_dwbh = ''
gi_modimark = 0

close(win_xtgl_jymx)
end event

type cb_cancel from commandbutton within win_xtgl_jymx
integer x = 2075
integer y = 1772
integer width = 443
integer height = 136
integer taborder = 90
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
boolean enabled = false
string text = "·ÅÆú"
boolean cancel = true
end type

event clicked;dw_1.enabled = true

sle_bmcode.text = ''
sle_bmname.text = ''
sle_xmhs.text = ''
sle_tc.text = ''
ddlb_glbg.selectitem(0)

sle_bmcode.enabled = false
sle_bmname.enabled = false
sle_xmhs.enabled = false
sle_tc.enabled = false
ddlb_glbg.enabled = false

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
gi_modimark = 0 

end event

type cb_add from commandbutton within win_xtgl_jymx
integer x = 887
integer y = 1776
integer width = 366
integer height = 132
integer taborder = 130
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "Ôö¼Ó"
boolean default = true
end type

event clicked;string  dwlastno

select max(bmmxid) into :dwlastno from a_bmmx where bmid like :gs_wh_dwbh;

if sqlca.sqlcode = 0  then
   if isnull(dwlastno) or dwlastno = "" then
	   sle_bmcode.text = '10001'
   else
	   sle_bmcode.text = string(long(dwlastno)+1)
   end if
else
	sle_bmcode.text = '10001'
end if

dw_1.enabled = false
gi_modimark = 1
sle_bmcode.enabled = true
sle_bmname.enabled = true
sle_xmhs.enabled = true
sle_tc.enabled = true
ddlb_glbg.enabled = true
sle_bmname.text = ''
sle_xmhs.text = ''
sle_tc.text = ''
ddlb_glbg.selectitem(1)

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

type cb_edit from commandbutton within win_xtgl_jymx
integer x = 1426
integer y = 1776
integer width = 366
integer height = 132
integer taborder = 60
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÐÞ¸Ä"
end type

event clicked;string jymlid,jyml,jylbid,jylb

if dw_1.rowcount() <= 0 then
   return
end if	

integer currno

if isnull(gs_keyno) or trim(gs_keyno) = '' then
   messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÐÞ¸ÄµÄÏîÄ¿Ã÷Ï¸£¡')	
	return
end if	

dw_1.enabled = false

dec tc
select bmmxid,bmmxmc,xmhs,tc,mark into :sle_bmcode.text,:sle_bmname.text,:sle_xmhs.text,:tc,:ddlb_glbg.text
       from a_bmmx where bmmxid like :gs_keyno and bmid =:gs_wh_dwbh;
if not isnull(tc) then sle_tc.text = string(tc)
gi_modimark = 2
sle_bmcode.enabled = true
sle_bmname.enabled = true
sle_xmhs.enabled = true
sle_tc.enabled = true
ddlb_glbg.enabled = true

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

type cb_dele from commandbutton within win_xtgl_jymx
integer x = 1966
integer y = 1776
integer width = 366
integer height = 132
integer taborder = 110
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "É¾³ý"
end type

event clicked;string jymlid,jyml,jylbid,jylb

if dw_1.rowcount() <= 0 then
   return
end if	

integer currno

if isnull(gs_keyno) or trim(gs_keyno) = '' then
   messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÉ¾³ýµÄÃ÷Ï¸ÏîÄ¿£¡')	
	return
end if	

dec tc
dw_1.enabled = false

select bmmxid,bmmxmc,xmhs,tc,mark into :sle_bmcode.text,:sle_bmname.text,:sle_xmhs.text,:tc,:ddlb_glbg.text
       from a_bmmx where bmmxid like :gs_keyno and bmid =:gs_wh_dwbh;
if not isnull(tc) then sle_tc.text = string(tc)
gi_modimark = 3
sle_bmcode.enabled = true
sle_bmname.enabled = true 
sle_xmhs.enabled = true 
sle_tc.enabled = true
ddlb_glbg.enabled = true

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

type st_space from statictext within win_xtgl_jymx
integer x = 357
integer y = 72
integer width = 2880
integer height = 304
integer textsize = -28
integer weight = 700
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "·ÂËÎ_GB2312"
long textcolor = 128
long backcolor = 16777215
boolean enabled = false
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type cb_ok from commandbutton within win_xtgl_jymx
integer x = 1157
integer y = 1772
integer width = 443
integer height = 136
integer taborder = 100
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
boolean enabled = false
string text = "È·ÈÏ"
boolean default = true
end type

event clicked;string namestr,codestr,bmhs,xmhs
integer currnum,okmark,leadnum
string bmmc 
string string_tc,glbg
dec dec_tc

okmark = 0
codestr = trim(sle_bmcode.text)
namestr = trim(sle_bmname.text)
xmhs = trim(sle_xmhs.text)
string_tc = trim(sle_tc.text)
glbg = ddlb_glbg.text
dec_tc = dec(string_tc)

select bmmc into :bmmc from a_bmcode where bmid like :gs_wh_dwbh;
choose case gi_modimark
	case 3 
        if messagebox("ÏµÍ³ÌáÊ¾","È·ÈÏÊÇ·ñÉ¾³ý£¿",Exclamation!,YesNo!,2)=1 then
           delete from a_bmmx where bmmxid like :gs_keyno and bmid like :gs_wh_dwbh;
			  okmark = sqlca.sqlcode
        end if
   case 2 
        if namestr = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','ÏîÄ¿Ã÷Ï¸Ãû³Æ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
          if codestr = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','ÏîÄ¿Ã÷Ï¸´úÂë²»ÄÜÎª¿Õ£¡')
			  return
		  end if
	if xmhs <> "" and not isnull(xmhs) then
		select count(*) into :currnum from a_bmmx &
		where bmmxid <> :gs_keyno and bmid <> :gs_wh_dwbh and xmhs = :xmhs ;
	   if currnum=1  then
		   messagebox('ÏµÍ³ÌáÊ¾','ÏîÄ¿ºËËãºÅ²»ÄÜÖØ¸´ ')
	      return
      end if
	 end if
	 
	 ///?
	 select bmhs into :bmhs from a_bmcode where bmid like :gs_wh_dwbh ;

		  
		  update a_bmmx set bmmxid=:codestr,bmmxmc=:namestr,bmmc=:bmmc,bmhs = :bmhs,xmhs = :xmhs,tc = :dec_tc,mark = :glbg
		  where bmmxid=:gs_keyno and bmid =:gs_wh_dwbh ;
		  
   case 1 
        if codestr = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','ÏîÄ¿Ã÷Ï¸´úÂë²»ÄÜÎª¿Õ£¡')
			  return
		  end if
    if namestr = '' then
		     messagebox('ÏµÍ³ÌáÊ¾','ÏîÄ¿Ã÷Ï¸Ãû³Æ²»ÄÜÎª¿Õ£¡')
			  return
		  end if
  ///?
  	select count(*) into :currnum from a_bmmx where bmmxid = :codestr and bmid =:gs_wh_dwbh ;
	if currnum>0  then
		messagebox('ÏµÍ³ÌáÊ¾','Í¬²¿ÃÅÏîÄ¿Ã÷Ï¸´úÂë²»ÄÜÖØ¸´ ')
	 return
    end if 
	 
	 select count(*) into :currnum from a_bmmx where bmmxmc = :namestr and bmid =:gs_wh_dwbh;
	if currnum>0  then
		messagebox('ÏµÍ³ÌáÊ¾','Í¬²¿ÃÅÏîÄ¿Ã÷Ï¸Ãû³Æ²»ÄÜÖØ¸´ ')
	 return
    end if 
	if xmhs <> "" and not isnull(xmhs) then
		select count(*) into :currnum from a_bmmx where xmhs = :xmhs ;
	   if currnum=1  then
		   messagebox('ÏµÍ³ÌáÊ¾','ÏîÄ¿ºËËãºÅ²»ÄÜÖØ¸´ ')
	      return
      end if
	 end if
	 ///?
	 select bmhs into :bmhs from a_bmcode where bmid like :gs_wh_dwbh ;
	 
		  insert into a_bmmx (bmmxid,bmmxmc,bmid,bmmc,bmhs,xmhs,tc,mark)  &
		  values (:codestr,:namestr,:gs_wh_dwbh,:bmmc,:bmhs,:xmhs,:dec_tc,:glbg);
	
end choose		  
if okmark = 0 then
   commit;
   retrieve(dw_1,gs_wh_dwbh)		
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

sle_bmcode.text = ''
sle_bmname.text = ''
sle_xmhs.text = ''
sle_tc.text = ''
ddlb_glbg.selectitem(0)

sle_bmcode.enabled = false
sle_bmname.enabled = false
sle_xmhs.enabled = false
sle_tc.enabled = false
ddlb_glbg.enabled = false

dw_1.enabled = true
gs_keyno = ''
gi_modimark = 0 



end event

