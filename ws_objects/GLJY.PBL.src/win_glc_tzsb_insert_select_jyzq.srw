$PBExportHeader$win_glc_tzsb_insert_select_jyzq.srw
forward
global type win_glc_tzsb_insert_select_jyzq from window
end type
type cbx_12 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_11 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_13 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_10 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_9 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_8 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_7 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_6 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_5 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_4 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_3 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_2 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type cbx_1 from checkbox within win_glc_tzsb_insert_select_jyzq
end type
type rb_20 from radiobutton within win_glc_tzsb_insert_select_jyzq
end type
type cb_2 from commandbutton within win_glc_tzsb_insert_select_jyzq
end type
type cb_1 from commandbutton within win_glc_tzsb_insert_select_jyzq
end type
type st_1 from statictext within win_glc_tzsb_insert_select_jyzq
end type
type rb_17 from radiobutton within win_glc_tzsb_insert_select_jyzq
end type
type st_2 from statictext within win_glc_tzsb_insert_select_jyzq
end type
type gb_1 from groupbox within win_glc_tzsb_insert_select_jyzq
end type
type gb_2 from groupbox within win_glc_tzsb_insert_select_jyzq
end type
type ln_3 from line within win_glc_tzsb_insert_select_jyzq
end type
type ln_4 from line within win_glc_tzsb_insert_select_jyzq
end type
type ln_1 from line within win_glc_tzsb_insert_select_jyzq
end type
type ln_2 from line within win_glc_tzsb_insert_select_jyzq
end type
end forward

global type win_glc_tzsb_insert_select_jyzq from window
integer x = 1074
integer y = 456
integer width = 1513
integer height = 1392
boolean titlebar = true
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 33552359
boolean center = true
cbx_12 cbx_12
cbx_11 cbx_11
cbx_13 cbx_13
cbx_10 cbx_10
cbx_9 cbx_9
cbx_8 cbx_8
cbx_7 cbx_7
cbx_6 cbx_6
cbx_5 cbx_5
cbx_4 cbx_4
cbx_3 cbx_3
cbx_2 cbx_2
cbx_1 cbx_1
rb_20 rb_20
cb_2 cb_2
cb_1 cb_1
st_1 st_1
rb_17 rb_17
st_2 st_2
gb_1 gb_1
gb_2 gb_2
ln_3 ln_3
ln_4 ln_4
ln_1 ln_1
ln_2 ln_2
end type
global win_glc_tzsb_insert_select_jyzq win_glc_tzsb_insert_select_jyzq

type variables
checkbox cbx[]
string temp_record[],typename[]
long li_temp
end variables

on win_glc_tzsb_insert_select_jyzq.create
this.cbx_12=create cbx_12
this.cbx_11=create cbx_11
this.cbx_13=create cbx_13
this.cbx_10=create cbx_10
this.cbx_9=create cbx_9
this.cbx_8=create cbx_8
this.cbx_7=create cbx_7
this.cbx_6=create cbx_6
this.cbx_5=create cbx_5
this.cbx_4=create cbx_4
this.cbx_3=create cbx_3
this.cbx_2=create cbx_2
this.cbx_1=create cbx_1
this.rb_20=create rb_20
this.cb_2=create cb_2
this.cb_1=create cb_1
this.st_1=create st_1
this.rb_17=create rb_17
this.st_2=create st_2
this.gb_1=create gb_1
this.gb_2=create gb_2
this.ln_3=create ln_3
this.ln_4=create ln_4
this.ln_1=create ln_1
this.ln_2=create ln_2
this.Control[]={this.cbx_12,&
this.cbx_11,&
this.cbx_13,&
this.cbx_10,&
this.cbx_9,&
this.cbx_8,&
this.cbx_7,&
this.cbx_6,&
this.cbx_5,&
this.cbx_4,&
this.cbx_3,&
this.cbx_2,&
this.cbx_1,&
this.rb_20,&
this.cb_2,&
this.cb_1,&
this.st_1,&
this.rb_17,&
this.st_2,&
this.gb_1,&
this.gb_2,&
this.ln_3,&
this.ln_4,&
this.ln_1,&
this.ln_2}
end on

on win_glc_tzsb_insert_select_jyzq.destroy
destroy(this.cbx_12)
destroy(this.cbx_11)
destroy(this.cbx_13)
destroy(this.cbx_10)
destroy(this.cbx_9)
destroy(this.cbx_8)
destroy(this.cbx_7)
destroy(this.cbx_6)
destroy(this.cbx_5)
destroy(this.cbx_4)
destroy(this.cbx_3)
destroy(this.cbx_2)
destroy(this.cbx_1)
destroy(this.rb_20)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.st_1)
destroy(this.rb_17)
destroy(this.st_2)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.ln_3)
destroy(this.ln_4)
destroy(this.ln_1)
destroy(this.ln_2)
end on

event open;string qzjmark,jyjlmark,ll_temp
long count,i,j
cbx[1] = cbx_1
cbx[2] = cbx_2
cbx[3] = cbx_3
cbx[4] = cbx_4
cbx[5] = cbx_5
cbx[6] = cbx_6
cbx[7] = cbx_7
cbx[8] = cbx_8
cbx[9] = cbx_9
cbx[10] = cbx_10
cbx[11] = cbx_11
cbx[12] = cbx_12
for j = 1 to 10 
	cbx[j].Enabled = false
next	
select qzjmark,jyjlmark into :qzjmark,:jyjlmark from a_jydw where jydw like :gs_jydw;
if isnull(jyjlmark) then jyjlmark = ''
if jyjlmark = '' then
	ll_temp = qzjmark
	if ll_temp = '' or isnull(ll_temp) then
	else
		for i = 1 to len(qzjmark)
			count=pos(ll_temp,",")
			temp_record[i] = left(ll_temp,count - 1)
			select typename into :typename[i] from a_bgml where jytype like :temp_record[i];
			if typename[i] = '»úÐµÊ½Í£³µÉè±¸°²×°¼à¼ì' then
				typename[i] = '»úÐµÊ½Í£³µÉè±¸°²¼ì'
			else
				typename[i] = trim(left(trim(typename[i]),len(trim(typename[i])) - 4))
			end if
			for j = 1 to 9 
				if cbx[j].text = typename[i] then
					cbx[j].Enabled = true
				end if
			next		
			ll_temp = right(ll_temp,len(ll_temp)-count)
			if ll_temp = '' or isnull(ll_temp) then
				li_temp = i
				exit
			end if
		next
	end if
else
	ll_temp = jyjlmark
	if ll_temp = '' or isnull(ll_temp) then
	else
		for i = 1 to len(ll_temp)
			count=pos(ll_temp,",")
			temp_record[i] = left(ll_temp,count - 1)
			select typename into :typename[i] from a_bgml where jytype like :temp_record[i];
			typename[i] = trim(left(trim(typename[i]),len(trim(typename[i])) - 4))
			for j = 1 to 12
				if j = 10 then continue
				if cbx[j].text = typename[i] then
					cbx[j].Enabled = true
					cbx[j].checked = true
				end if
			next		
			ll_temp = right(ll_temp,len(ll_temp)-count)
			if ll_temp = '' or isnull(ll_temp) then
				li_temp = i
				exit
			end if
		next
	end if
end if
end event

type cbx_12 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 786
integer y = 896
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Éý½µ×÷ÒµÆ½Ì¨¶¨ÆÚ"
end type

type cbx_11 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 55
integer y = 896
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "¸ß¿Õ×÷Òµ³µ¶¨ÆÚ"
end type

type cbx_13 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 32
integer y = 1024
integer width = 517
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ËùÓÐÏîÄ¿"
end type

event clicked;long i,j
if this.checked = true then
	for j = 1 to li_temp
		for i = 1 to 10
			if i = 10 then continue
			if cbx[i].text = typename[j] then
				cbx[i].checked = true
			end if
		next
	next
	for i = 11 to 12
		cbx[i].checked = true
	next
else
	for j = 1 to li_temp
		for i = 1 to 10
			if i = 10 then continue
			if cbx[i].text = typename[j] then
				cbx[i].checked = false
			end if
		next
	next
	for i = 11 to 12
		cbx[i].checked = false
	next
end if
end event

type cbx_10 from checkbox within win_glc_tzsb_insert_select_jyzq
boolean visible = false
integer x = 768
integer y = 588
integer width = 686
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "»úÐµÊ½Í£³µÉè±¸°²¼ì"
end type

type cbx_9 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 55
integer y = 688
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "»úÐµÊ½Í£³µÉè±¸¶¨ÆÚ"
end type

type cbx_8 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 786
integer y = 588
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Ðý±ÛÆðÖØ»ú¶¨ÆÚ"
end type

type cbx_7 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 55
integer y = 588
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "µç¶¯ºùÂ«¶¨ÆÚ"
end type

type cbx_6 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 786
integer y = 488
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "¼òÒ×Ê©¹¤Éý½µ»ú¶¨ÆÚ"
end type

type cbx_5 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 55
integer y = 488
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Ê©¹¤Éý½µ»ú¶¨ÆÚ"
end type

type cbx_4 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 786
integer y = 388
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ÃÅ×ùÊ½ÆðÖØ»ú¶¨ÆÚ"
end type

type cbx_3 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 55
integer y = 388
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Á÷¶¯ÆðÖØ»ú¶¨ÆÚ"
end type

type cbx_2 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 786
integer y = 288
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ËþÊ½ÆðÖØ»ú¶¨ÆÚ"
end type

type cbx_1 from checkbox within win_glc_tzsb_insert_select_jyzq
integer x = 55
integer y = 288
integer width = 695
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ÇÅ(ÃÅ)Ê½ÆðÖØ»ú¶¨ÆÚ"
end type

type rb_20 from radiobutton within win_glc_tzsb_insert_select_jyzq
boolean visible = false
integer x = 649
integer y = 844
integer width = 453
integer height = 80
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "Éý½µÆðÖØ»ú"
end type

event clicked;//is_select_mark = '^'
end event

type cb_2 from commandbutton within win_glc_tzsb_insert_select_jyzq
integer x = 814
integer y = 1176
integer width = 233
integer height = 88
integer taborder = 20
integer textsize = -10
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "ÍË³ö"
end type

event clicked;close(parent)
end event

type cb_1 from commandbutton within win_glc_tzsb_insert_select_jyzq
integer x = 343
integer y = 1176
integer width = 233
integer height = 88
integer taborder = 10
integer textsize = -10
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
string text = "È·¶¨"
end type

event clicked;string is_select_mc
string is_select_mark
long i
string mark,montha
string jymlid,jyml,jylbid,jylb
for i = 1 to 12
	if cbx[i].checked = false then continue 
	if cbx[i].checked = true then
		is_select_mc = cbx[i].text + '¼ìÑé'
		select jymlid,jylbid into :jymlid,:jylbid from view_bgml_total where typename like :is_select_mc;
		select mark,montha into :mark,:montha from a_jyjl where jymlid like :jymlid and jylbid like :jylbid and jyjl = 'ºÏ¸ñ';
		select mc into :jyml from a_jyml_id where id like :jymlid;
		select mc into :jylb from a_jylb_id where id like :jylbid;
		IF mark = 'N' then
			choose case jymlid
				case 'V','S','U','<','{','Ua'
					if montha = '12' then
					else
						IF messagebox("ÌØ±ðÌáÊ¾","ÏÖÓÐµÄÏµÍ³ÖÐ" + jyml + "ÉèÖÃµÄ¼ìÑéÖÜÆÚ" + montha + "ÔÂÓëÐÂ±ê×¼²»·û£¬Ê±ÊÇ·ñ¼ÌÐø£¿",Exclamation!,YesNo!,1)<>1 THEN return
						delete from a_jyjl where jymlid like :jymlid and jylbid like :jylbid; 
						insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
						values ('1','ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
						insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
						values ('2','²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
						insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
						values ('3','¸´¼ìºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
						insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
						values ('4','¸´¼ì²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
					end if
				case 'V','W','$','&','/'
					if montha = '24' then
					else
						IF messagebox("ÌØ±ðÌáÊ¾","ÏÖÓÐµÄÏµÍ³ÖÐ" + jyml + "ÉèÖÃµÄ¼ìÑéÖÜÆÚ" + montha + "ÔÂÓëÐÂ±ê×¼²»·û£¬Ê±ÊÇ·ñ¼ÌÐø£¿",Exclamation!,YesNo!,1)<>1 THEN return
						delete from a_jyjl where jymlid like :jymlid and jylbid like :jylbid; 
						insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
						values ('1','ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
						insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
						values ('2','²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
						insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
						values ('3','¸´¼ìºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
						insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
						values ('4','¸´¼ì²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
					end if
			end choose
		elseif mark = 'Y' then
			choose case jymlid
				case 'V','S','U','<','{','Ua'
					IF messagebox("ÌØ±ðÌáÊ¾","ÏÖÓÐµÄÏµÍ³ÖÐÃ»ÓÐÉèÖÃµÄ¼ìÑéÖÜÆÚÓëÐÂ±ê×¼²»·û£¬Ê±ÊÇ·ñ¼ÌÐø£¿",Exclamation!,YesNo!,1)<>1 THEN return
					delete from a_jyjl where jymlid like :jymlid and jylbid like :jylbid; 
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('1','ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('2','²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('3','¸´¼ìºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('4','¸´¼ì²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
				case 'V','W','$','&','/'
					IF messagebox("ÌØ±ðÌáÊ¾","ÏÖÓÐµÄÏµÍ³ÖÐÃ»ÓÐÉèÖÃµÄ¼ìÑéÖÜÆÚÓëÐÂ±ê×¼²»·û£¬Ê±ÊÇ·ñ¼ÌÐø£¿",Exclamation!,YesNo!,1)<>1 THEN return
					delete from a_jyjl where jymlid like :jymlid and jylbid like :jylbid; 
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('1','ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('2','²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('3','¸´¼ìºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('4','¸´¼ì²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
			end choose
		else
			choose case jymlid
				case 'V','S','U','<','{','Ua'
					 insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					 values ('1','ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
					 insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					 values ('2','²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
					 insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					 values ('3','¸´¼ìºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
					 insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					 values ('4','¸´¼ì²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','12');
				case 'V','W','$','&','/'
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('1','ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('2','²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('3','¸´¼ìºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
					insert into a_jyjl (jyjlid,jyjl,jymlid,jyml,jylbid,jylb,mark,montha)  &		  
					values ('4','¸´¼ì²»ºÏ¸ñ',:jymlid,:jyml,:jylbid,:jylb,'N','24');
			end choose
		end if
		if is_select_mark = '' or isnull(is_select_mark) then
			is_select_mark = jymlid + 'c' + ','
		else
			is_select_mark = is_select_mark + jymlid + 'c' + ','
		end if
	end if
next
//////////////////////////////////////////////////////////////////////////////
IF sqlca.sqlcode <>0 THEN
	MessageBox ('','¸üÐÂÊ§°Ü')
	return
else
	update a_jydw set jyjlmark = :is_select_mark;
	commit;
	messagebox('ÏµÍ³ÌáÊ¾','ÉèÖÃÍê±Ï!')
END IF


end event

type st_1 from statictext within win_glc_tzsb_insert_select_jyzq
integer x = 41
integer y = 44
integer width = 1426
integer height = 96
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean enabled = false
string text = "ÐÂ°æ±¾ÆðÖØ»úÉè±¸¶¨ÆÚ¼ìÑéÖÜÆÚÉè¶¨"
alignment alignment = center!
boolean focusrectangle = false
end type

type rb_17 from radiobutton within win_glc_tzsb_insert_select_jyzq
boolean visible = false
integer x = 110
integer y = 832
integer width = 411
integer height = 80
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "µ¥ÁºÆðÖØ»ú"
end type

event clicked;//is_select_mark = 'R'
end event

type st_2 from statictext within win_glc_tzsb_insert_select_jyzq
integer x = 32
integer y = 12
integer width = 1449
integer height = 140
integer textsize = -12
integer weight = 700
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 16777215
boolean enabled = false
alignment alignment = center!
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type gb_1 from groupbox within win_glc_tzsb_insert_select_jyzq
integer x = 32
integer y = 180
integer width = 1458
integer height = 628
integer taborder = 10
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ÐÂ¸Ä°æ¸ñÊ½"
end type

type gb_2 from groupbox within win_glc_tzsb_insert_select_jyzq
integer x = 32
integer y = 816
integer width = 1458
integer height = 192
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = variable!
string facename = "ËÎÌå"
long textcolor = 8388608
long backcolor = 33552359
string text = "ÐÂÔö¼ÓµÄ±¨¸æÀà±ð"
end type

type ln_3 from line within win_glc_tzsb_insert_select_jyzq
long linecolor = 8388608
integer linethickness = 9
integer beginx = 41
integer beginy = 172
integer endx = 1463
integer endy = 172
end type

type ln_4 from line within win_glc_tzsb_insert_select_jyzq
long linecolor = 1090519039
integer linethickness = 9
integer beginx = 41
integer beginy = 180
integer endx = 1463
integer endy = 180
end type

type ln_1 from line within win_glc_tzsb_insert_select_jyzq
long linecolor = 8388608
integer linethickness = 9
integer beginx = 14
integer beginy = 1112
integer endx = 1435
integer endy = 1112
end type

type ln_2 from line within win_glc_tzsb_insert_select_jyzq
long linecolor = 1090519039
integer linethickness = 9
integer beginx = 14
integer beginy = 1120
integer endx = 1435
integer endy = 1120
end type

