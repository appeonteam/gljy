$PBExportHeader$win_xtgl_shjb.srw
$PBExportComments$ÉóºË¼¶±ðÉè¶¨
forward
global type win_xtgl_shjb from Window
end type
type ddlb_jylb from dropdownlistbox within win_xtgl_shjb
end type
type st_3 from statictext within win_xtgl_shjb
end type
type ddlb_jyml from dropdownlistbox within win_xtgl_shjb
end type
type st_1 from statictext within win_xtgl_shjb
end type
type st_title from statictext within win_xtgl_shjb
end type
type st_xt from statictext within win_xtgl_shjb
end type
type st_date from statictext within win_xtgl_shjb
end type
type sle_mlid from singlelineedit within win_xtgl_shjb
end type
type cb_exit from commandbutton within win_xtgl_shjb
end type
type cb_cancel from commandbutton within win_xtgl_shjb
end type
type cb_add from commandbutton within win_xtgl_shjb
end type
type cb_dele from commandbutton within win_xtgl_shjb
end type
type cb_ok from commandbutton within win_xtgl_shjb
end type
type st_space from statictext within win_xtgl_shjb
end type
type dw_d from datawindow within win_xtgl_shjb
end type
type cb_edit from commandbutton within win_xtgl_shjb
end type
end forward

shared variables
//string gi_jymlid,gi_jylbid,gi_lbmc
end variables

global type win_xtgl_shjb from Window
int X=10
int Y=5
int Width=3644
int Height=2413
long BackColor=79741120
WindowType WindowType=child!
ddlb_jylb ddlb_jylb
st_3 st_3
ddlb_jyml ddlb_jyml
st_1 st_1
st_title st_title
st_xt st_xt
st_date st_date
sle_mlid sle_mlid
cb_exit cb_exit
cb_cancel cb_cancel
cb_add cb_add
cb_dele cb_dele
cb_ok cb_ok
st_space st_space
dw_d dw_d
cb_edit cb_edit
end type
global win_xtgl_shjb win_xtgl_shjb

type variables

end variables

event open;st_xt.text = gs_jydw
st_date.text=string(date(fun_datetime('date')),'yyyyÄêmmÔÂddÈÕ')
st_title.text = "ÉóºË¹ý³ÌÉè¶¨"
settransobject(dw_d,sqlca)
retrieve(dw_d)
//
//ddlb_jyml.additem('¹¤Òµ¹øÂ¯' + space(100) + 'D')
//ddlb_jyml.additem('Ñ¹Á¦ÈÝÆ÷' + space(100) + 'I')
//ddlb_jyml.additem('ÐÂÐÍÈÝÆ÷' + space(100) + '6')
//ddlb_jyml.additem('¹¤Òµ¹ÜµÀ' + space(100) + '5')
//
//ddlb_jylb.additem('ÄÚ²¿¼ìÑé' + space(100) + 'a')
//ddlb_jylb.additem('Íâ²¿¼ìÑé' + space(100) + 'b')
//ddlb_jylb.additem('¶¨ÆÚ¼ìÑé' + space(100) + 'c')
//ddlb_jyml.selectitem(1)
//ddlb_jylb.selectitem(1)
//ddlb_jyml.additem(tempstr2 + space(100) + tempstr1)
string tempstr1,tempstr2
DECLARE temp_jy CURSOR FOR
	SELECT id,mc
	FROM a_jyml_id ORDER BY id;
OPEN temp_jy;
ddlb_jyml.additem(space(110))
FETCH temp_jy INTO :tempstr1,:tempstr2;
DO WHILE SQLCA.SQLCODE = 0
   ddlb_jyml.additem(tempstr2 + space(100) + tempstr1)
   FETCH temp_jy INTO :tempstr1,:tempstr2;
LOOP
CLOSE temp_jy;
//
string tempstr3,tempstr4
DECLARE temp_lb CURSOR FOR
	SELECT id,mc
	FROM a_jylb_id ORDER BY id;
OPEN temp_lb;
ddlb_jylb.additem(space(110))
FETCH temp_lb INTO :tempstr3,:tempstr4;
DO WHILE SQLCA.SQLCODE = 0
   ddlb_jylb.additem(tempstr4 + space(100) + tempstr3)
   FETCH temp_lb INTO :tempstr3,:tempstr4;
LOOP
CLOSE temp_lb;
////
//ddlb_jyml.text = '¹¤Òµ¹øÂ¯' + space(100) + 'D'
//ddlb_jylb.selectitem(2)
//
setnull(gi_jymlid)
setnull(gi_jylbid)
setnull(gi_jyml)
setnull(gi_jylb)

gi_modimark = 0
end event

on win_xtgl_shjb.create
this.ddlb_jylb=create ddlb_jylb
this.st_3=create st_3
this.ddlb_jyml=create ddlb_jyml
this.st_1=create st_1
this.st_title=create st_title
this.st_xt=create st_xt
this.st_date=create st_date
this.sle_mlid=create sle_mlid
this.cb_exit=create cb_exit
this.cb_cancel=create cb_cancel
this.cb_add=create cb_add
this.cb_dele=create cb_dele
this.cb_ok=create cb_ok
this.st_space=create st_space
this.dw_d=create dw_d
this.cb_edit=create cb_edit
this.Control[]={ this.ddlb_jylb,&
this.st_3,&
this.ddlb_jyml,&
this.st_1,&
this.st_title,&
this.st_xt,&
this.st_date,&
this.sle_mlid,&
this.cb_exit,&
this.cb_cancel,&
this.cb_add,&
this.cb_dele,&
this.cb_ok,&
this.st_space,&
this.dw_d,&
this.cb_edit}
end on

on win_xtgl_shjb.destroy
destroy(this.ddlb_jylb)
destroy(this.st_3)
destroy(this.ddlb_jyml)
destroy(this.st_1)
destroy(this.st_title)
destroy(this.st_xt)
destroy(this.st_date)
destroy(this.sle_mlid)
destroy(this.cb_exit)
destroy(this.cb_cancel)
destroy(this.cb_add)
destroy(this.cb_dele)
destroy(this.cb_ok)
destroy(this.st_space)
destroy(this.dw_d)
destroy(this.cb_edit)
end on

type ddlb_jylb from dropdownlistbox within win_xtgl_shjb
int X=1532
int Y=1305
int Width=462
int Height=533
int TabOrder=90
boolean Sorted=false
boolean VScrollBar=true
long BackColor=16777215
int TextSize=-11
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event selectionchanged;//gi_jylbid = trim(right(trim(ddlb_jylb.text),1))
//gi_lbmc = trim(left(trim(ddlb_jylb.text),80))
end event

type st_3 from statictext within win_xtgl_shjb
int X=1212
int Y=1321
int Width=321
int Height=77
boolean Enabled=false
string Text="¼ìÑéÀà±ð"
boolean FocusRectangle=false
long BackColor=80269528
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type ddlb_jyml from dropdownlistbox within win_xtgl_shjb
int X=700
int Y=1305
int Width=462
int Height=533
int TabOrder=60
boolean Sorted=false
boolean VScrollBar=true
long BackColor=16777215
int TextSize=-11
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event selectionchanged;//gi_jymlid = trim(right(trim(ddlb_jyml.text),1))
end event

type st_1 from statictext within win_xtgl_shjb
int X=375
int Y=1321
int Width=330
int Height=77
boolean Enabled=false
string Text="Éè±¸Àà±ð"
boolean FocusRectangle=false
long BackColor=80269528
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_title from statictext within win_xtgl_shjb
int X=563
int Y=133
int Width=1267
int Height=169
boolean Enabled=false
string Text="ÉóºË¹ý³ÌÉè¶¨"
Alignment Alignment=Center!
boolean FocusRectangle=false
long TextColor=255
long BackColor=80269528
int TextSize=-26
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_xt from statictext within win_xtgl_shjb
int X=1989
int Y=133
int Width=1189
int Height=77
boolean Enabled=false
string Text="ÆóÒµÖÇÄÜ»¯¹ÜÀíÏµÍ³"
Alignment Alignment=Center!
boolean FocusRectangle=false
long BackColor=80269528
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_date from statictext within win_xtgl_shjb
int X=1989
int Y=233
int Width=1189
int Height=77
boolean Enabled=false
string Text="1999Äê1ÔÂ20ÈÕ"
Alignment Alignment=Center!
boolean FocusRectangle=false
long BackColor=80269528
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type sle_mlid from singlelineedit within win_xtgl_shjb
int X=371
int Y=1365
int Width=513
int Height=105
int TabOrder=10
boolean Visible=false
BorderStyle BorderStyle=StyleLowered!
long TextColor=8388608
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type cb_exit from commandbutton within win_xtgl_shjb
event clicked pbm_bnclicked
int X=2442
int Y=1657
int Width=343
int Height=129
int TabOrder=80
string Text="ÍË³ö"
boolean Cancel=true
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;setnull(gi_jymlid)
setnull(gi_jylbid)
setnull(gi_jyml)
setnull(gi_jylb)
gi_modimark = 0
close(win_xtgl_shjb)
end event

type cb_cancel from commandbutton within win_xtgl_shjb
int X=2108
int Y=1653
int Width=403
int Height=137
int TabOrder=30
boolean Visible=false
boolean Enabled=false
string Text="·ÅÆú"
boolean Cancel=true
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//dw_1.enabled = true
//
//sle_jyjlid.text = ''
//sle_jyjl.text = ''
//ddlb_jyml.selectitem(0)
//ddlb_jylb.selectitem(0)
//
//cb_ok.visible = false
//cb_ok.enabled = false
//cb_cancel.visible = false
//cb_cancel.enabled = false
//
//cb_exit.visible = true
//cb_exit.enabled = true
//cb_dele.visible = true
//cb_dele.enabled = true
//cb_edit.visible = true
//cb_edit.enabled = true
//cb_add.visible = true
//cb_add.enabled = true
//
//gs_keyno = ''
//
//setnull(gi_jyjlid)
//setnull(gi_jymlid)
//setnull(gi_jylbid)
//
end event

type cb_add from commandbutton within win_xtgl_shjb
int X=892
int Y=1657
int Width=343
int Height=129
int TabOrder=100
string Text="Ôö¼Ó"
boolean Default=true
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;gi_modimark = 1

gi_jymlid = trim(right(trim(ddlb_jyml.text),1))
gi_jylbid = trim(right(trim(ddlb_jylb.text),1))
gi_jyml   = trim(left(trim(ddlb_jyml.text),80))
gi_jylb   = trim(left(trim(ddlb_jylb.text),80))

choose case gi_jymlid + gi_jylbid
	case 'Da','Db','Di','Fa','Fb'
     open(win_xtgl_shjb_gg_pop)
   case 'Ic','Jc','6c'
	  open(win_xtgl_shjb_jyml_pop)
   case '5c','4c'
		open(win_xtgl_shjb_gd_pop)
	case else
		messagebox("ÏµÍ³ÌáÊ¾","¸ÃÏµÍ³ÖÐÎÞ´ËÀà±¨¸æµÄÉóºËÄ£Ê½£¡")
end choose
	
end event

type cb_dele from commandbutton within win_xtgl_shjb
int X=1925
int Y=1657
int Width=343
int Height=129
int TabOrder=50
string Text="É¾³ý"
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;if isnull(gs_keyno) then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÉ¾³ýµÄÉóºË¹ý³Ì£¡')
	return
end if

if messagebox("ÏµÍ³ÌáÊ¾","È·ÈÏÊÇ·ñÉ¾³ý£¿",Exclamation!,YesNo!,2)=1 then
gi_modimark = 3

choose case gi_jymlid + gi_jylbid
	case 'Da','Db','Di','Fa','Fb'
     open(win_xtgl_shjb_gg_pop)
   case 'Ic','Jc','6c'
	  open(win_xtgl_shjb_jyml_pop)
   case '5c','4c'
		open(win_xtgl_shjb_gd_pop)
end choose
	
end if
end event

type cb_ok from commandbutton within win_xtgl_shjb
int X=1148
int Y=1653
int Width=403
int Height=137
int TabOrder=40
boolean Visible=false
boolean Enabled=false
string Text="È·ÈÏ"
boolean Default=true
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//string jyjlid,jyjl,jymlid,jyml,jylbid,jylb
//integer currnum,okmark,leadnum
//
//okmark = 0
//
//jyjlid = trim(sle_jyjlid.text)
//jyjl = trim(sle_jyjl.text)
//jymlid = right(trim(ddlb_jyml.text),1)
//jyml = trim(left(trim(ddlb_jyml.text),80))
//jylbid = right(trim(ddlb_jylb.text),1)
//jylb = trim(left(trim(ddlb_jylb.text),80))
//
//choose case gi_modimark
//	case 3 
//        if messagebox("ÏµÍ³ÌáÊ¾","È·ÈÏÊÇ·ñÉ¾³ý£¿",Exclamation!,YesNo!,2)=1 then
//           delete from a_jyjl 
//			  where jyjlid = :gi_jyjlid and jymlid = :gi_jymlid and jylbid = :gi_jylbid ;
//        end if
//   case 2 
//        if jyjlid = '' then
//		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑé½áÂÛ±àºÅ²»ÄÜÎª¿Õ£¡')
//			  return
//		  end if
//          if jyjl = '' then
//		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑé½áÂÛ²»ÄÜÎª¿Õ£¡')
//			  return
//		  end if
//		  if jyml = '' then
//		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑéÃÅÀàÃû³Æ²»ÄÜÎª¿Õ£¡')
//			  return
//		  end if
//        if jylb = '' then
//		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑéÀà±ð²»ÄÜÎª¿Õ£¡')
//			  return
//		  end if
//		  
//		    UPDATE a_jyjl  
//     SET jymlid = :jymlid,   
//         jyml = :jyml,   
//         jylbid = :jylbid,   
//         jylb = :jylb,   
//         jyjlid = :jyjlid,   
//         jyjl = :jyjl  
//   WHERE ( a_jyjl.jymlid like :gi_jymlid ) AND  
//         ( a_jyjl.jylbid like :gi_jylbid ) AND  
//         ( a_jyjl.jyjlid like :gi_jyjlid )   ;
//   case 1 
//        if jyjlid = '' then
//		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑé½áÂÛ±àºÅ²»ÄÜÎª¿Õ£¡')
//			  return
//		  end if
//          if jyjl = '' then
//		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑé½áÂÛ²»ÄÜÎª¿Õ£¡')
//			  return
//		  end if
//		  if jyml = '' then
//		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑéÃÅÀàÃû³Æ²»ÄÜÎª¿Õ£¡')
//			  return
//		  end if
//        if jylb = '' then
//		     messagebox('ÏµÍ³ÌáÊ¾','¼ìÑéÀà±ð²»ÄÜÎª¿Õ£¡')
//			  return
//		  end if
//  	     
//			 select count(*) into :currnum from a_jy where jyjlid = :jyjlid  &
//			                 and jymlid = :jymlid and jylbid = :jylbid ;
//	        if currnum=1  then
//		      messagebox('ÏµÍ³ÌáÊ¾','¸Ã¼ìÑé½áÂÛÒÑ´æÔÚ£¡')
//	        return
//           end if
//	 
//		  insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb)  &
//		  values (:jyjlid,:jyjl,:jymlid,:jyml,:jylbid,:jylb);
//	
//end choose		  
//if okmark = 0 then
//   commit;
//   retrieve(dw_1)		
//else
//	rollback;
//	messagebox('ÏµÍ³ÌáÊ¾','¶Ô²»Æð£¡´Ë´ÎÐÞ¸ÄµÄÊý¾ÝÎ´ÄÜ¸üÐÂ£¡')
//end if
//
//cb_ok.visible = false
//cb_ok.enabled = false
//cb_cancel.visible = false
//cb_cancel.enabled = false
//
//cb_exit.visible = true
//cb_exit.enabled = true
//cb_dele.visible = true
//cb_dele.enabled = true
//cb_edit.visible = true
//cb_edit.enabled = true
//cb_add.visible = true
//cb_add.enabled = true
//
//sle_jyjlid.text = ''
//sle_jyjl.text = ''
//sle_jyjlid.enabled = false
//sle_jyjl.enabled = false
//ddlb_jyml.enabled = false
//ddlb_jyml.selectitem(0)
//ddlb_jylb.selectitem(0)
//ddlb_jylb.enabled = false
//
//dw_1.enabled = true
//gs_keyno = ''
//
//setnull(gi_jyjlid)
//setnull(gi_jymlid)
//setnull(gi_jylbid)
end event

type st_space from statictext within win_xtgl_shjb
int X=357
int Y=73
int Width=2881
int Height=305
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleLowered!
boolean FocusRectangle=false
long TextColor=128
long BackColor=80269528
int TextSize=-28
int Weight=700
string FaceName="·ÂËÎ_GB2312"
FontFamily FontFamily=Modern!
FontPitch FontPitch=Fixed!
end type

type dw_d from datawindow within win_xtgl_shjb
int X=357
int Y=385
int Width=2876
int Height=901
int TabOrder=70
string DataObject="dw_xtgl_shjb_gg"
BorderStyle BorderStyle=StyleLowered!
boolean HScrollBar=true
boolean VScrollBar=true
boolean HSplitScroll=true
boolean LiveScroll=true
end type

event clicked;if row > 0 then
   selectrow(0,false)
	selectrow(row,true)
	gs_keyno = getitemstring(row,'shjbid')
	gi_jymlid = getitemstring(row,'jymlid')
	gi_jylbid = getitemstring(row,'jylbid')
	gi_jyml = getitemstring(row,'jyml')
	gi_jylb = getitemstring(row,'jylb')
else
	setnull(gs_keyno)
	setnull(gi_jymlid)
	setnull(gi_jylbid)
	setnull(gi_jyml)
	setnull(gi_jylb)
end if

end event

type cb_edit from commandbutton within win_xtgl_shjb
int X=1409
int Y=1657
int Width=343
int Height=129
int TabOrder=20
boolean BringToTop=true
string Text="ÐÞ¸Ä"
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;if isnull(gs_keyno) or gs_keyno = '' then
	messagebox('ÏµÍ³ÌáÊ¾','ÇëÑ¡ÖÐÒªÐÞ¸ÄµÄÉóºË¹ý³Ì£¡')
	return
end if

gi_modimark = 2
choose case gi_jymlid + gi_jylbid
	case 'Da','Db','Di','Fa','Fb'
     open(win_xtgl_shjb_gg_pop)
   case 'Ic','Jc','6c'
	  open(win_xtgl_shjb_jyml_pop)
   case '5c','4c'
	  open(win_xtgl_shjb_gd_pop)
end choose
	
end event

