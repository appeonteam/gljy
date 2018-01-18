$PBExportHeader$win_zw_mdi.srw
$PBExportComments$ZW¡ª¡ªÖ¸ÎÆ_mdi
forward
global type win_zw_mdi from window
end type
type ole_1 from olecustomcontrol within win_zw_mdi
end type
type ddlb_ryid from dropdownlistbox within win_zw_mdi
end type
type sle_id from statictext within win_zw_mdi
end type
type st_1 from statictext within win_zw_mdi
end type
type st_3 from statictext within win_zw_mdi
end type
type cb_1 from commandbutton within win_zw_mdi
end type
type rb_right from radiobutton within win_zw_mdi
end type
type rb_left from radiobutton within win_zw_mdi
end type
type st_text from statictext within win_zw_mdi
end type
type cb_2 from commandbutton within win_zw_mdi
end type
type st_4 from statictext within win_zw_mdi
end type
type st_title from statictext within win_zw_mdi
end type
type st_xt from statictext within win_zw_mdi
end type
type st_date from statictext within win_zw_mdi
end type
type cb_cs from commandbutton within win_zw_mdi
end type
type cb_dj from commandbutton within win_zw_mdi
end type
type st_space from statictext within win_zw_mdi
end type
type gb_1 from groupbox within win_zw_mdi
end type
type st_2 from statictext within win_zw_mdi
end type
end forward

shared variables

end variables

global type win_zw_mdi from window
integer x = 393
integer y = 376
integer width = 3035
integer height = 1580
boolean titlebar = true
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 79741120
ole_1 ole_1
ddlb_ryid ddlb_ryid
sle_id sle_id
st_1 st_1
st_3 st_3
cb_1 cb_1
rb_right rb_right
rb_left rb_left
st_text st_text
cb_2 cb_2
st_4 st_4
st_title st_title
st_xt st_xt
st_date st_date
cb_cs cb_cs
cb_dj cb_dj
st_space st_space
gb_1 gb_1
st_2 st_2
end type
global win_zw_mdi win_zw_mdi

type prototypes

end prototypes

type variables
LONG LL_COUNT
end variables

on win_zw_mdi.create
this.ole_1=create ole_1
this.ddlb_ryid=create ddlb_ryid
this.sle_id=create sle_id
this.st_1=create st_1
this.st_3=create st_3
this.cb_1=create cb_1
this.rb_right=create rb_right
this.rb_left=create rb_left
this.st_text=create st_text
this.cb_2=create cb_2
this.st_4=create st_4
this.st_title=create st_title
this.st_xt=create st_xt
this.st_date=create st_date
this.cb_cs=create cb_cs
this.cb_dj=create cb_dj
this.st_space=create st_space
this.gb_1=create gb_1
this.st_2=create st_2
this.Control[]={this.ole_1,&
this.ddlb_ryid,&
this.sle_id,&
this.st_1,&
this.st_3,&
this.cb_1,&
this.rb_right,&
this.rb_left,&
this.st_text,&
this.cb_2,&
this.st_4,&
this.st_title,&
this.st_xt,&
this.st_date,&
this.cb_cs,&
this.cb_dj,&
this.st_space,&
this.gb_1,&
this.st_2}
end on

on win_zw_mdi.destroy
destroy(this.ole_1)
destroy(this.ddlb_ryid)
destroy(this.sle_id)
destroy(this.st_1)
destroy(this.st_3)
destroy(this.cb_1)
destroy(this.rb_right)
destroy(this.rb_left)
destroy(this.st_text)
destroy(this.cb_2)
destroy(this.st_4)
destroy(this.st_title)
destroy(this.st_xt)
destroy(this.st_date)
destroy(this.cb_cs)
destroy(this.cb_dj)
destroy(this.st_space)
destroy(this.gb_1)
destroy(this.st_2)
end on

event open;st_xt.text = gs_jydw
st_date.text=string(date(fun_datetime('date')),'yyyyÄêmmÔÂddÈÕ')
st_title.text = "Ö¸ÎÆµÇ¼Ç"

boolean lbool
lbool=ole_1.object.fpinit()
if lbool then 
	messagebox("ÏµÍ³ÌáÊ¾","Ö¸ÎÆÒÇ¹¤×÷Õý³£")
else
	messagebox("ÏµÍ³ÌáÊ¾","Ö¸ÎÆÒÇ¹¤×÷²»Õý³£")
end if

string tempstr1,tempstr2
DECLARE temp_ryid CURSOR FOR
	SELECT ryid,rymc
	FROM a_rycode 
	WHERE ryid <> '1111'
	ORDER BY ryid;
OPEN temp_ryid;
ddlb_ryid.additem(space(40))
FETCH temp_ryid INTO :tempstr1,:tempstr2;
DO WHILE SQLCA.SQLCODE = 0
   ddlb_ryid.additem(tempstr2 + space(100) + tempstr1)
   FETCH temp_ryid INTO :tempstr1,:tempstr2;
LOOP
CLOSE temp_ryid;

ddlb_ryid.selectitem(0)

setnull(gs_zwid)
end event

type ole_1 from olecustomcontrol within win_zw_mdi
event doproc ( long aparamstate,  long aparamctrl,  string aparamdata )
integer x = 1573
integer y = 352
integer width = 1257
integer height = 800
integer taborder = 21
borderstyle borderstyle = styleraised!
long backcolor = 16777215
string binarykey = "win_zw_mdi.win"
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
end type

event doproc;string ryid,rymc

choose Case aParamState
    Case 1025   
        st_text.text = "ÓÃ»§È¡Ïû£¡"
		  sle_id.text = ""
    Case 1034    
        If aParamCtrl <> 0 Then
            st_text.text = "Put your finger NO. Five !"
        Else
            st_text.text = "Çë·ÅÊÖÖ¸!"
        End If
    Case 1044   
       st_text.text= "ÖØ·ÅÊÖÖ¸!"
    Case 1054  
       st_text.text = "ÊÖÖ¸Àë¿ª!"
    Case 1064
        If aParamData <> "" Then			
			  messagebox("","ÖØ¸´µÇ¼ÇÖ¸ÎÆ")
			  sle_id.text = ""
			  return
        End If
        If ole_1.object.FpSaveEnrollData(Trim(sle_id.Text)) = False Then
            ole_1.object.FpSOUNDNO
            st_text.text  = "µÇ¼ÇÊ§°Ü!"
				sle_id.text = ""
        Else
            ole_1.object.FpSOUNDOK            
            //sle_id.text = aParamData
				if rb_right.checked = true then
				   update a_rycode 
				   set r_zw = :sle_id.text
					where ryid like :gs_zwid;					
				else
					update a_rycode 
				   set l_zw = :sle_id.text
					where ryid like :gs_zwid; 
				end if
				sle_id.text = ""
				st_text.text = "µÇ¼Ç³É¹¦!"
        End If
    Case 1084
        If aParamData <> "" Then
            sle_id.text = aParamData
            ole_1.object.FpSOUNDOK
				SELECT ryid,rymc INTO :ryid,:rymc FROM a_rycode WHERE r_zw LIKE :sle_id.text OR l_zw LIKE :SLE_ID.TEXT  ;
            IF sqlca.sqlcode = 0 and ryid <> "" and not isnull(ryid) THEN 
				   st_text.text = "²âÊÔ³É¹¦!"
				   sle_id.text = "" 
					ddlb_ryid.text =  rymc + space(100) + ryid
				ELSE
					st_text.text = "²âÊÔÊ§°Ü!"
			      sle_id.text = ""
				END IF					
        Else
            ole_1.object.FpSOUNDNO
            st_text.text = "²âÊÔÊ§°Ü!"
			   sle_id.text = ""
        End If
    Case 1094
    Case 1104 
       st_text.text = "On Processing... !"
    Case 1114 
        ole_1.object.DefDoProc(aParamState, aParamCtrl,sle_id.text)
    Case 1624
       st_text.text = "Error !"
      st_text.text="Error " +string(aParamCtrl)+ ": " +string(aParamData)
    Case 1124
end choose

end event

type ddlb_ryid from dropdownlistbox within win_zw_mdi
integer x = 699
integer y = 404
integer width = 590
integer height = 536
integer taborder = 20
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean vscrollbar = true
end type

type sle_id from statictext within win_zw_mdi
boolean visible = false
integer x = 475
integer y = 1304
integer width = 590
integer height = 84
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean enabled = false
boolean border = true
boolean focusrectangle = false
end type

type st_1 from statictext within win_zw_mdi
integer x = 439
integer y = 540
integer width = 210
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 32768
long backcolor = 80269528
boolean enabled = false
string text = "×´ Ì¬"
boolean focusrectangle = false
end type

type st_3 from statictext within win_zw_mdi
integer x = 439
integer y = 756
integer width = 210
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 80269528
boolean enabled = false
string text = "Ñ¡ Ôñ"
boolean focusrectangle = false
end type

type cb_1 from commandbutton within win_zw_mdi
integer x = 2446
integer y = 1204
integer width = 393
integer height = 128
integer taborder = 60
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË³ö"
boolean cancel = true
end type

event clicked;setnull(gs_zwid)
close(parent)
end event

type rb_right from radiobutton within win_zw_mdi
integer x = 745
integer y = 728
integer width = 315
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
string text = "ÓÒÊ³Ö¸"
boolean checked = true
end type

type rb_left from radiobutton within win_zw_mdi
integer x = 759
integer y = 820
integer width = 315
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
string text = "×óÊ³Ö¸"
end type

type st_text from statictext within win_zw_mdi
integer x = 699
integer y = 536
integer width = 617
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 32768
long backcolor = 80269528
boolean enabled = false
boolean focusrectangle = false
end type

type cb_2 from commandbutton within win_zw_mdi
event clicked pbm_bnclicked
boolean visible = false
integer x = 73
integer y = 764
integer width = 261
integer height = 104
integer taborder = 10
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "cancel"
end type

event clicked;ole_1.object.VerifyRequired = False
ole_1.object.EnrollRequired = False

close(parent)
end event

type st_4 from statictext within win_zw_mdi
integer x = 439
integer y = 404
integer width = 256
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long backcolor = 80269528
boolean enabled = false
string text = "ÐÕ  Ãû"
boolean focusrectangle = false
end type

type st_title from statictext within win_zw_mdi
integer x = 229
integer y = 116
integer width = 1024
integer height = 168
integer textsize = -24
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 255
long backcolor = 80269528
boolean enabled = false
string text = "Ö¸ÎÆµÇ¼Ç"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_xt from statictext within win_zw_mdi
integer x = 1701
integer y = 112
integer width = 978
integer height = 76
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
boolean enabled = false
string text = "´Ó"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_date from statictext within win_zw_mdi
integer x = 1705
integer y = 212
integer width = 1010
integer height = 76
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
boolean enabled = false
string text = "·¢"
alignment alignment = center!
boolean focusrectangle = false
end type

type cb_cs from commandbutton within win_zw_mdi
event clicked pbm_bnclicked
integer x = 1961
integer y = 1208
integer width = 393
integer height = 128
integer taborder = 50
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "²âÊÔ"
boolean cancel = true
end type

event clicked;ole_1.object.VerifyPlayMode = 2
ole_1.object.VerifyRequired = True

gs_zwid = trim(right(trim(ddlb_ryid.text),30))
if gs_zwid = "" or isnull(gs_zwid) then
   messagebox("ÏµÍ³ÌáÊ¾","ÇëÑ¡ÖÐÈË")
	return
end if


end event

type cb_dj from commandbutton within win_zw_mdi
event clicked pbm_bnclicked
integer x = 1495
integer y = 1212
integer width = 393
integer height = 124
integer taborder = 40
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "µÇ¼Ç"
boolean default = true
end type

event clicked;ole_1.object.EnrollPlayMode = 1
ole_1.object.EnrollRequired = true

gs_zwid = trim(right(trim(ddlb_ryid.text),30))
if gs_zwid = "" or isnull(gs_zwid) then
   messagebox("ÏµÍ³ÌáÊ¾","ÇëÑ¡ÖÐÈË")
	return
end if

if rb_right.checked = true then
   sle_id.text = gs_zwid + 'r'
else
	sle_id.text = gs_zwid + 'l'
end if
end event

type st_space from statictext within win_zw_mdi
integer x = 165
integer y = 60
integer width = 2665
integer height = 264
integer textsize = -28
integer weight = 700
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "·ÂËÎ_GB2312"
long backcolor = 80269528
boolean enabled = false
boolean border = true
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

type gb_1 from groupbox within win_zw_mdi
integer x = 695
integer y = 664
integer width = 599
integer height = 276
integer taborder = 30
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
string text = " "
borderstyle borderstyle = styleraised!
end type

type st_2 from statictext within win_zw_mdi
integer x = 165
integer y = 352
integer width = 1390
integer height = 800
integer textsize = -12
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long backcolor = 80269528
boolean enabled = false
boolean border = true
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type


Start of PowerBuilder Binary Data Section : Do NOT Edit
0Ewin_zw_mdi.bin 
2B00000600e011cfd0e11ab1a1000000000000000000000000000000000003003e0009fffe00000006000000000000000000000001000000010000000000001000fffffffe00000000fffffffe0000000000000000fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdfffffffeffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff006f00520074006f004500200074006e00790072000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000050016ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000fffffffe00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000ffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1Ewin_zw_mdi.bin 
End of PowerBuilder Binary Data Section : No Source Expected After This Point
