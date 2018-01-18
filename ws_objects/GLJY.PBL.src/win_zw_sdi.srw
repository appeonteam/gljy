$PBExportHeader$win_zw_sdi.srw
$PBExportComments$ZW_Ö¸ÎÆµÇ¼Çsdi
forward
global type win_zw_sdi from Window
end type
type ole_1 from olecustomcontrol within win_zw_sdi
end type
type sle_id from statictext within win_zw_sdi
end type
type st_1 from statictext within win_zw_sdi
end type
type st_3 from statictext within win_zw_sdi
end type
type cb_1 from commandbutton within win_zw_sdi
end type
type rb_right from radiobutton within win_zw_sdi
end type
type rb_left from radiobutton within win_zw_sdi
end type
type st_name from statictext within win_zw_sdi
end type
type st_text from statictext within win_zw_sdi
end type
type cb_2 from commandbutton within win_zw_sdi
end type
type st_4 from statictext within win_zw_sdi
end type
type st_title from statictext within win_zw_sdi
end type
type st_xt from statictext within win_zw_sdi
end type
type st_date from statictext within win_zw_sdi
end type
type cb_cs from commandbutton within win_zw_sdi
end type
type cb_dj from commandbutton within win_zw_sdi
end type
type st_space from statictext within win_zw_sdi
end type
type gb_1 from groupbox within win_zw_sdi
end type
type st_2 from statictext within win_zw_sdi
end type
end forward

shared variables

end variables

global type win_zw_sdi from Window
int X=394
int Y=377
int Width=3036
int Height=1581
boolean TitleBar=true
long BackColor=79741120
boolean ControlMenu=true
WindowType WindowType=response!
ole_1 ole_1
sle_id sle_id
st_1 st_1
st_3 st_3
cb_1 cb_1
rb_right rb_right
rb_left rb_left
st_name st_name
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
global win_zw_sdi win_zw_sdi

type prototypes

end prototypes

type variables
LONG LL_COUNT
end variables

on win_zw_sdi.create
this.ole_1=create ole_1
this.sle_id=create sle_id
this.st_1=create st_1
this.st_3=create st_3
this.cb_1=create cb_1
this.rb_right=create rb_right
this.rb_left=create rb_left
this.st_name=create st_name
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
this.Control[]={ this.ole_1,&
this.sle_id,&
this.st_1,&
this.st_3,&
this.cb_1,&
this.rb_right,&
this.rb_left,&
this.st_name,&
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

on win_zw_sdi.destroy
destroy(this.ole_1)
destroy(this.sle_id)
destroy(this.st_1)
destroy(this.st_3)
destroy(this.cb_1)
destroy(this.rb_right)
destroy(this.rb_left)
destroy(this.st_name)
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

select rymc into :st_name.text from a_rycode where ryid like :gs_zwid;
end event

type ole_1 from olecustomcontrol within win_zw_sdi
event doproc ( long aparamstate,  long aparamctrl,  string aparamdata )
int X=1564
int Y=353
int Width=1262
int Height=801
int TabOrder=1
long BackColor=16777215
BorderStyle BorderStyle=StyleRaised!
string BinaryKey="win_zw_sdi.win"
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event doproc;choose Case aParamState
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
				if gs_zwid = '1111' then
						update a_jydw
						    set zwmark = 'Y';
					end if
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
				SELECT COUNT(*) INTO :LL_COUNT FROM a_rycode WHERE r_zw LIKE :sle_id.text OR l_zw LIKE :SLE_ID.TEXT  ;
            IF LL_COUNT > 0 THEN 
				   st_text.text = "²âÊÔ³É¹¦!"
				   sle_id.text = ""
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

type sle_id from statictext within win_zw_sdi
int X=476
int Y=1305
int Width=590
int Height=85
boolean Visible=false
boolean Enabled=false
boolean Border=true
boolean FocusRectangle=false
long TextColor=8388608
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type st_1 from statictext within win_zw_sdi
int X=439
int Y=541
int Width=211
int Height=77
boolean Enabled=false
string Text="×´ Ì¬"
boolean FocusRectangle=false
long TextColor=32768
long BackColor=80269528
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type st_3 from statictext within win_zw_sdi
int X=439
int Y=757
int Width=211
int Height=77
boolean Enabled=false
string Text="Ñ¡ Ôñ"
boolean FocusRectangle=false
long BackColor=80269528
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type cb_1 from commandbutton within win_zw_sdi
int X=2446
int Y=1205
int Width=394
int Height=129
int TabOrder=50
string Text="ÍË³ö"
boolean Cancel=true
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

event clicked;close(parent)
end event

type rb_right from radiobutton within win_zw_sdi
int X=746
int Y=729
int Width=316
int Height=77
string Text="ÓÒÊ³Ö¸"
boolean Checked=true
long BackColor=80269528
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type rb_left from radiobutton within win_zw_sdi
int X=759
int Y=821
int Width=316
int Height=77
string Text="×óÊ³Ö¸"
long BackColor=80269528
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_name from statictext within win_zw_sdi
int X=705
int Y=397
int Width=590
int Height=85
boolean Enabled=false
boolean Border=true
boolean FocusRectangle=false
long TextColor=8388608
long BackColor=16777215
int TextSize=-12
int Weight=400
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type st_text from statictext within win_zw_sdi
int X=700
int Y=529
int Width=618
int Height=77
boolean Enabled=false
boolean FocusRectangle=false
long TextColor=32768
long BackColor=80269528
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type cb_2 from commandbutton within win_zw_sdi
event clicked pbm_bnclicked
int X=74
int Y=765
int Width=261
int Height=105
int TabOrder=10
boolean Visible=false
string Text="cancel"
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;ole_1.object.VerifyRequired = False
ole_1.object.EnrollRequired = False

close(parent)
end event

type st_4 from statictext within win_zw_sdi
int X=439
int Y=405
int Width=247
int Height=77
boolean Enabled=false
string Text="ÐÕ  Ãû"
boolean FocusRectangle=false
long BackColor=80269528
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

type st_title from statictext within win_zw_sdi
int X=229
int Y=117
int Width=1025
int Height=169
boolean Enabled=false
string Text="Ö¸ÎÆµÇ¼Ç"
Alignment Alignment=Center!
boolean FocusRectangle=false
long TextColor=255
long BackColor=80269528
int TextSize=-24
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_xt from statictext within win_zw_sdi
int X=1701
int Y=113
int Width=979
int Height=77
boolean Enabled=false
string Text="´Ó"
Alignment Alignment=Center!
boolean FocusRectangle=false
long BackColor=80269528
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_date from statictext within win_zw_sdi
int X=1706
int Y=213
int Width=1011
int Height=77
boolean Enabled=false
string Text="·¢"
Alignment Alignment=Center!
boolean FocusRectangle=false
long BackColor=80269528
int TextSize=-12
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type cb_cs from commandbutton within win_zw_sdi
event clicked pbm_bnclicked
int X=1962
int Y=1209
int Width=394
int Height=129
int TabOrder=40
string Text="²âÊÔ"
boolean Cancel=true
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

event clicked;ole_1.object.VerifyPlayMode = 2
ole_1.object.VerifyRequired = True


end event

type cb_dj from commandbutton within win_zw_sdi
event clicked pbm_bnclicked
int X=1495
int Y=1213
int Width=394
int Height=125
int TabOrder=30
string Text="µÇ¼Ç"
boolean Default=true
int TextSize=-12
int Weight=700
string FaceName="ËÎÌå"
FontPitch FontPitch=Variable!
end type

event clicked;ole_1.object.EnrollPlayMode = 1
ole_1.object.EnrollRequired = true

if rb_right.checked = true then
   sle_id.text = gs_zwid + 'r'
else
	sle_id.text = gs_zwid + 'l'
end if
end event

type st_space from statictext within win_zw_sdi
int X=165
int Y=61
int Width=2666
int Height=265
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleRaised!
boolean FocusRectangle=false
long BackColor=80269528
int TextSize=-28
int Weight=700
string FaceName="·ÂËÎ_GB2312"
FontFamily FontFamily=Modern!
FontPitch FontPitch=Fixed!
end type

type gb_1 from groupbox within win_zw_sdi
int X=695
int Y=665
int Width=599
int Height=277
int TabOrder=20
string Text=" "
BorderStyle BorderStyle=StyleRaised!
long BackColor=80269528
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_2 from statictext within win_zw_sdi
int X=165
int Y=353
int Width=1390
int Height=801
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleRaised!
boolean FocusRectangle=false
long TextColor=32768
long BackColor=80269528
int TextSize=-12
int Weight=400
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type


Start of PowerBuilder Binary Data Section : Do NOT Edit
04win_zw_sdi.bin 
2000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
14win_zw_sdi.bin 
End of PowerBuilder Binary Data Section : No Source Expected After This Point
