$PBExportHeader$win_dqm_init.srw
$PBExportComments$µØÇøÂë³õÊ¼ÉèÖÃ
forward
global type win_dqm_init from win_main
end type
type cb_3 from commandbutton within win_dqm_init
end type
type dw_1 from datawindow within win_dqm_init
end type
type st_3 from statictext within win_dqm_init
end type
type st_2 from statictext within win_dqm_init
end type
type st_1 from statictext within win_dqm_init
end type
type st_addr from uo_statictext within win_dqm_init
end type
type cb_2 from uo_commandbutton within win_dqm_init
end type
type cb_1 from uo_commandbutton within win_dqm_init
end type
type ddlb_sheng from dropdownlistbox within win_dqm_init
end type
type gb_1 from uo_groupbox_xzdm within win_dqm_init
end type
type ddlb_shi from dropdownlistbox within win_dqm_init
end type
type ddlb_quxian from dropdownlistbox within win_dqm_init
end type
end forward

global type win_dqm_init from win_main
integer width = 2779
integer height = 2180
string title = "µØÇøÂëÑ¡Ôñ½çÃæ"
boolean minbox = false
boolean maxbox = false
boolean resizable = false
windowtype windowtype = response!
cb_3 cb_3
dw_1 dw_1
st_3 st_3
st_2 st_2
st_1 st_1
st_addr st_addr
cb_2 cb_2
cb_1 cb_1
ddlb_sheng ddlb_sheng
gb_1 gb_1
ddlb_shi ddlb_shi
ddlb_quxian ddlb_quxian
end type
global win_dqm_init win_dqm_init

type variables
//string jytype
long il_row
end variables

forward prototypes
public subroutine uo_fun_interfaceinit ()
public subroutine uo_fun_exitclear (window p_1)
public subroutine uf_ddlb (string str, dropdownlistbox ddlb)
public subroutine uf_init (string addrid)
end prototypes

public subroutine uo_fun_interfaceinit ();this.title = 'ÇëÉèÖÃÈËÔ±µÄµØÇøÂë'
end subroutine

public subroutine uo_fun_exitclear (window p_1);close(p_1)
win_xtgl_ry.ddlb_bm.event ue_init(gs_addrid)
end subroutine

public subroutine uf_ddlb (string str, dropdownlistbox ddlb);string ls_sheng,ls_shi,ls_quxian
choose case str
	case 'sheng'
		ls_sheng = '__0000'
		ls_shi = '000000'
		ls_quxian = '000000'
	case 'shi'
		ls_sheng = '____00'
		ls_shi = '__0000'
		ls_quxian = '000000'
	case 'quxian'
		ls_sheng = '______'
		ls_shi = '____00'
		ls_quxian = '__0000'
end choose

datastore lds_1
lds_1 = create datastore
lds_1.dataobject = 'dat_xzdm'
lds_1.settransobject(sqlca)
lds_1.retrieve(ls_sheng,ls_shi,ls_quxian)

long ll_row_count
ll_row_count = lds_1.rowcount()

if ll_row_count > 0 then
	string ls_mc,ls_id
	int i
	ddlb.reset()
	for i = 1 to ll_row_count
		ls_mc = lds_1.getitemstring(i,'xzmc')
		ls_id = lds_1.getitemstring(i,'xzid')
		ddlb.additem(ls_mc + '(' + ls_id + ')')
	next
end if
destroy lds_1
end subroutine

public subroutine uf_init (string addrid);string ls_id_sheng,ls_id_shi,ls_id_quxian
string ls_name_sheng,ls_name_shi,ls_name_quxian,ls_mark
ls_mark = right(addrid,2)
if ls_mark = '00' then 
	ls_id_quxian = "00"
	 if right(addrid,4) = "0000" then
		ls_id_shi = "0000"
		ls_id_sheng = left(addrid,2) + "0000"
	else
		ls_id_shi = left(addrid,4) + "00"
		ls_id_sheng = left(addrid,2) + "0000"
	end if
else
	ls_id_sheng = left(addrid,2) + "0000"
	ls_id_shi = left(addrid,4) + "00"
	ls_id_quxian = addrid
end if

//ls_id_sheng = left(addrid,2) + "0000"
//ls_id_shi = left(addrid,4) + "00"
//ls_id_quxian = addrid

datastore lds_1
lds_1 = create datastore
lds_1.dataobject = "dat_z_xzdm"
lds_1.settransobject(sqlca)

lds_1.reset()
lds_1.retrieve(ls_id_sheng)
if lds_1.rowcount() > 0 then
	ls_name_sheng = lds_1.getitemstring(1,'xzmc')
	ddlb_sheng.text = ls_name_sheng + '(' + ls_id_sheng + ')'
end if

lds_1.reset()
lds_1.retrieve(ls_id_shi)
if lds_1.rowcount() > 0 then
	ls_name_shi = lds_1.getitemstring(1,'xzmc')
	ddlb_shi.event ue_init(ls_id_sheng)
	ddlb_shi.text = ls_name_shi + '(' + ls_id_shi + ')'
end if

lds_1.reset()
lds_1.retrieve(ls_id_quxian)
if lds_1.rowcount() > 0 then
	ls_name_quxian = lds_1.getitemstring(1,'xzmc')
	ddlb_quxian.event ue_init(ls_id_shi)
	ddlb_quxian.text = ls_name_quxian + '(' + ls_id_quxian + ')'
end if

st_addr.text = gs_addrid
destroy lds_1
end subroutine

on win_dqm_init.create
int iCurrent
call super::create
this.cb_3=create cb_3
this.dw_1=create dw_1
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.st_addr=create st_addr
this.cb_2=create cb_2
this.cb_1=create cb_1
this.ddlb_sheng=create ddlb_sheng
this.gb_1=create gb_1
this.ddlb_shi=create ddlb_shi
this.ddlb_quxian=create ddlb_quxian
iCurrent=UpperBound(this.Control)
this.Control[iCurrent+1]=this.cb_3
this.Control[iCurrent+2]=this.dw_1
this.Control[iCurrent+3]=this.st_3
this.Control[iCurrent+4]=this.st_2
this.Control[iCurrent+5]=this.st_1
this.Control[iCurrent+6]=this.st_addr
this.Control[iCurrent+7]=this.cb_2
this.Control[iCurrent+8]=this.cb_1
this.Control[iCurrent+9]=this.ddlb_sheng
this.Control[iCurrent+10]=this.gb_1
this.Control[iCurrent+11]=this.ddlb_shi
this.Control[iCurrent+12]=this.ddlb_quxian
end on

on win_dqm_init.destroy
call super::destroy
destroy(this.cb_3)
destroy(this.dw_1)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.st_addr)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.ddlb_sheng)
destroy(this.gb_1)
destroy(this.ddlb_shi)
destroy(this.ddlb_quxian)
end on

event show;call super::show;//½çÃæ³õÊ¼»¯
uo_fun_interfaceinit()
ddlb_sheng.event ue_init()
if gs_addrid <> '' then
	uf_init(gs_addrid)
end if
end event

event open;call super::open;dw_1.settransobject(sqlca)
//jytype = message.stringparm
dw_1.retrieve(gs_keyno)
end event

type cb_3 from commandbutton within win_dqm_init
integer x = 1051
integer y = 1684
integer width = 274
integer height = 96
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
string text = "É¾³ý"
end type

event clicked;if il_row <  1 then 
	messagebox("ÏµÍ³ÌáÊ¾","ÇëÑ¡ÔñÒªÉ¾³ýµÄÐÅÏ¢")
	return 
end if 
string id
id = dw_1.getitemstring(il_row,'addrid')
if messagebox("ÏµÍ³ÌáÊ¾","ÄúÈ·ÈÏÉ¾³ý±¾ÌõÐÅÏ¢£¿",Exclamation!, OKCancel!, 2) = 2 then return
delete from a_dqm_init where addrid = :id and ryid like :gs_keyno;
if sqlca.sqlcode   = 0 then 
	commit;
	dw_1.retrieve(gs_keyno)
	messagebox("ÏµÍ³ÌáÊ¾","ÐÅÏ¢É¾³ý³É¹¦")
else
	rollback ;
	messagebox("ÏµÍ³ÌáÊ¾","ÐÅÏ¢É¾³ýÊ§°Ü")
	return 
end if 
il_row = 0

string jytype,typename,jyid,l_id,ls_ry_addrid,ls_ry_addrname,mark
int i

for i =1 to win_jykeyset.tab_1.tabpage_1.dw_dj.rowcount()
	jytype = win_jykeyset.tab_1.tabpage_1.dw_dj.getitemstring(i,'jytype')
	select typename into :typename from a_bgml where jytype = :jytype;
	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
	delete from a_ry_dqm
	where jytype like :jytype and ryid like :gs_keyno and addrid like :id;
next

for i =1 to win_jykeyset.tab_1.tabpage_2.dw_aj.rowcount()
	jytype = win_jykeyset.tab_1.tabpage_2.dw_aj.getitemstring(i,'jytype')
	select typename into :typename from a_bgml where jytype = :jytype;
	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
	delete from a_ry_dqm
	where jytype like :jytype and ryid like :gs_keyno and addrid like :id;
next

for i =1 to win_jykeyset.tab_1.tabpage_3.dw_jj.rowcount()
	jytype = win_jykeyset.tab_1.tabpage_3.dw_jj.getitemstring(i,'jytype')
	select typename into :typename from a_bgml where jytype = :jytype;
	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
	delete from a_ry_dqm
	where jytype like :jytype and ryid like :gs_keyno and addrid like :id;
next

for i =1 to win_jykeyset.tab_1.tabpage_4.dw_jk.rowcount()
	jytype = win_jykeyset.tab_1.tabpage_4.dw_jk.getitemstring(i,'jytype')
	select typename into :typename from a_bgml where jytype = :jytype;
	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
	delete from a_ry_dqm
	where jytype like :jytype and ryid like :gs_keyno and addrid like :id;
next

for i =1 to win_jykeyset.tab_1.tabpage_5.dw_qj.rowcount()
	jytype = win_jykeyset.tab_1.tabpage_5.dw_qj.getitemstring(i,'jytype')
	select typename into :typename from a_bgml where jytype = :jytype;
	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
	delete from a_ry_dqm
	where jytype like :jytype and ryid like :gs_keyno and addrid like :id;
next
commit;

end event

type dw_1 from datawindow within win_dqm_init
integer x = 37
integer y = 40
integer width = 2597
integer height = 1252
integer taborder = 10
string title = "none"
string dataobject = "dw_dqm_init"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event clicked;if row < 1 then return
il_row = row
selectrow(0,false)
selectrow(row,true)
dw_1.accepttext()

end event

type st_3 from statictext within win_dqm_init
integer x = 2414
integer y = 1476
integer width = 174
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Çø/ÏØ"
boolean focusrectangle = false
end type

type st_2 from statictext within win_dqm_init
integer x = 1586
integer y = 1476
integer width = 78
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "ÊÐ"
boolean focusrectangle = false
end type

type st_1 from statictext within win_dqm_init
integer x = 745
integer y = 1476
integer width = 64
integer height = 52
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
long backcolor = 67108864
string text = "Ê¡"
boolean focusrectangle = false
end type

type st_addr from uo_statictext within win_dqm_init
integer x = 2167
integer y = 1704
integer width = 361
integer height = 68
integer textsize = -10
long backcolor = 134217748
string text = "µØÇøÂë"
alignment alignment = center!
boolean border = true
long bordercolor = 134217738
end type

type cb_2 from uo_commandbutton within win_dqm_init
integer x = 1641
integer y = 1684
integer width = 274
integer height = 96
integer taborder = 40
integer textsize = -10
string text = "·µ»Ø"
end type

event clicked;call super::clicked;//ÍË³öÇåÀí
//uo_fun_exitclear(parent)
close(parent)
end event

type cb_1 from uo_commandbutton within win_dqm_init
integer x = 462
integer y = 1684
integer width = 274
integer height = 96
integer taborder = 40
integer textsize = -10
string text = "È·ÈÏ"
end type

event clicked;call super::clicked;//Êý¾Ý±£´æ
string ls_sheng,ls_shi,ls_quxian
string ls_name_sheng,ls_name_shi,ls_name_quxian
string ls_ry_id,ls_ry_addrid,ls_ry_addrname

if parent.ddlb_sheng.text = '' then
	ls_sheng = '00'
	ls_name_sheng = ''
else
	ls_sheng  = mid(trim(mid(right(parent.ddlb_sheng.text,8),2,6)),1,2)
	ls_name_sheng = trim(left(parent.ddlb_sheng.text,len(parent.ddlb_sheng.text) - 8))
end if

if parent.ddlb_shi.text = '' then
	ls_shi = '00'
	ls_name_shi = ''
else
	ls_shi    = mid(trim(mid(right(parent.ddlb_shi.text,8),2,6)),3,2)
	ls_name_shi = trim(left(parent.ddlb_shi.text,len(parent.ddlb_shi.text) - 8))
end if

if parent.ddlb_quxian.text = '' then
	ls_quxian = '00'
	ls_name_quxian = ''
else
	ls_quxian = mid(trim(mid(right(parent.ddlb_quxian.text,8),2,6)),5,2)
	ls_name_quxian = trim(left(parent.ddlb_quxian.text,len(parent.ddlb_quxian.text) - 8))
end if
//************************************song*****************************//
string ls_msheng,ls_mshi,ls_mqu,addi[],l_sql,ls_msheng1,ls_mshi1,ls_mqu1,mark
int i,li_n,li_mark = 0,li_mark1 = 0
ls_msheng = ls_sheng + "0000"
ls_mshi = ls_sheng + ls_shi + "00"
	select count(distinct addrid) into :li_n from a_dqm_init where ryid = :gs_keyno ;
//select addrid into :ls_msheng from a_dqm_init where ryid = :gs_keyno;
l_sql = "select distinct addrid from a_dqm_init" + " where ryid = '" + gs_keyno +"'"
//				if right(l_sql,4) = 'and ' then l_sql = left(l_sql,len(l_sql) - 4)		
			DECLARE C DYNAMIC CURSOR FOR sqlsa ;
			PREPARE sqlsa FROM :l_sql ;
			OPEN DYNAMIC C;
			for i = 1 to li_n
				FETCH C INTO :addi[i];
//			addrsheng[i] = left(addi[i],2)
//			sheng[i] = sheng[i] + "____"
			next
			CLOSE C;
			for i = 1 to li_n
				if ls_msheng = addi[i] then
					li_mark= li_mark + 1
				end if
				if ls_mshi = addi[i] then
					li_mark1= li_mark1 + 1
				end if
			next
		if ls_quxian <> "00" then
				ls_mqu1 = ls_sheng + ls_shi + ls_quxian
				select count(distinct addrid) into :li_n from a_dqm_init where  ryid = :gs_keyno and addrid like :ls_mqu1;
			if li_n <> 0 then
				messagebox("ÏµÍ³ÌáÊ¾","µØÇøÂëÖØ¸´ÇëÖØÐÂÈ·ÈÏ!")
				return
			end if
		elseif ls_shi <> "00" then
			ls_mshi1 = ls_sheng + ls_shi + "__"
			select count(distinct addrid) into :li_n from a_dqm_init where  ryid = :gs_keyno and addrid like :ls_mshi1;
			if li_n <> 0 then
				messagebox("ÏµÍ³ÌáÊ¾","µØÇøÂëÖØ¸´ÇëÖØÐÂÈ·ÈÏ!")
				return
			end if
		else
			ls_msheng1 = ls_sheng + "____"
			select count(distinct addrid) into :li_n from a_dqm_init where  ryid = :gs_keyno and addrid like :ls_msheng1;
			if li_n <> 0 then
				messagebox("ÏµÍ³ÌáÊ¾","µØÇøÂëÖØ¸´ÇëÖØÐÂÈ·ÈÏ!")
				return
			end if
		end if
			if li_mark <> 0 or li_mark1 <> 0 then 
				messagebox("ÏµÍ³ÌáÊ¾","ÄúÒÑ¾­ÉèÖÃÁË¸ü´óµÄÈ¨ÏÞ!")
				return
			end if
//************************************song*****************************//


ls_ry_id = gs_keyno
ls_ry_addrid = ls_sheng + ls_shi + ls_quxian
ls_ry_addrname = ls_name_sheng + ls_name_shi + ls_name_quxian
long l_row,l_count
	string typename,jyid,l_id
	select count(*) into :l_count from a_dqm_init where ryid = :gs_keyno and addrid = :ls_ry_addrid;
	if l_count > 0 then
		messagebox("ÏµÍ³ÌáÊ¾!","¸ÃÐÅÏ¢ÒÑ´æÔÚ!")
		return
	end if 
	l_row = dw_1.insertrow(0)
if left(ls_ry_addrid,2) = '00' then
	messagebox("ÌáÊ¾","ÇëÕýÈ·Ñ¡ÔñµØÇøÂë!")
	return
elseif mid(ls_ry_addrid,3,2) = '00' then
	dw_1.setitem(l_row,'mark','1')
	mark = '1'
elseif right(ls_ry_addrid,2) = '00' then
	dw_1.setitem(l_row,'mark','2')
	mark = '2'
else
	dw_1.setitem(l_row,'mark','3')
	mark = '3'
end if
//	gs_addrid = ls_ry_addrid
//	gs_addrname = ls_ry_addrname
	
	
//	select max(id) into :l_id from a_dqm_init;
//	if isnull(l_id) or l_id = '' then
//		l_id = '1000000001'
//	else
//		l_id = string(dec(l_id) + 1)
//	end if


//	dw_1.setitem(l_row,'id',l_id)
	dw_1.setitem(l_row,'ryid',gs_keyno)
	dw_1.setitem(l_row,'addrid',ls_ry_addrid)
	dw_1.setitem(l_row,'addrname',ls_ry_addrname)
//   dw_1.setitem(l_row,'jytype',jytype)
//	select typename into :typename from a_bgml where jytype = :jytype;
//	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
//	dw_1.setitem(l_row,'typename',typename)
//	dw_1.setitem(l_row,'jyid',jyid)
	dw_1.update()
//	parent.cb_2.triggerevent(clicked!)

string jytype

for i =1 to win_jykeyset.tab_1.tabpage_1.dw_dj.rowcount()
	if win_jykeyset.tab_1.tabpage_1.dw_dj.getitemstring(i,'rysh') = '1' or win_jykeyset.tab_1.tabpage_1.dw_dj.getitemstring(i,'rysp') = '1' then 
	jytype = win_jykeyset.tab_1.tabpage_1.dw_dj.getitemstring(i,'jytype')
	select typename into :typename from a_bgml where jytype = :jytype;
	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
	select max(id) into :l_id from a_ry_dqm;
	if isnull(l_id) or l_id = '' then
		l_id = '1000000001'
	else
		l_id = string(dec(l_id) + 1)
	end if
	insert into a_ry_dqm
	values (:l_id,:gs_keyno,:jytype,:typename,:jyid,:ls_ry_addrid,:ls_ry_addrname,:mark);
else
end if
next

for i =1 to win_jykeyset.tab_1.tabpage_2.dw_aj.rowcount()
	if win_jykeyset.tab_1.tabpage_2.dw_aj.getitemstring(i,'rysh') = '1' or win_jykeyset.tab_1.tabpage_2.dw_aj.getitemstring(i,'rysp') = '1' then
	jytype = win_jykeyset.tab_1.tabpage_2.dw_aj.getitemstring(i,'jytype')
	select typename into :typename from a_bgml where jytype = :jytype;
	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
	select max(id) into :l_id from a_ry_dqm;
	if isnull(l_id) or l_id = '' then
		l_id = '1000000001'
	else
		l_id = string(dec(l_id) + 1)
	end if
	insert into a_ry_dqm
	values (:l_id,:gs_keyno,:jytype,:typename,:jyid,:ls_ry_addrid,:ls_ry_addrname,:mark);
else
end if
next

for i =1 to win_jykeyset.tab_1.tabpage_3.dw_jj.rowcount()
	if win_jykeyset.tab_1.tabpage_3.dw_jj.getitemstring(i,'rysh') = '1' or win_jykeyset.tab_1.tabpage_3.dw_jj.getitemstring(i,'rysp') = '1' then
	jytype = win_jykeyset.tab_1.tabpage_3.dw_jj.getitemstring(i,'jytype')
	select typename into :typename from a_bgml where jytype = :jytype;
	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
	select max(id) into :l_id from a_ry_dqm;
	if isnull(l_id) or l_id = '' then
		l_id = '1000000001'
	else
		l_id = string(dec(l_id) + 1)
	end if
	insert into a_ry_dqm
	values (:l_id,:gs_keyno,:jytype,:typename,:jyid,:ls_ry_addrid,:ls_ry_addrname,:mark);
else 
end if
next

for i =1 to win_jykeyset.tab_1.tabpage_4.dw_jk.rowcount()
	if win_jykeyset.tab_1.tabpage_4.dw_jk.getitemstring(i,'rysh') = '1' or win_jykeyset.tab_1.tabpage_4.dw_jk.getitemstring(i,'rysp') = '1' then
	jytype = win_jykeyset.tab_1.tabpage_4.dw_jk.getitemstring(i,'jytype')
	select typename into :typename from a_bgml where jytype = :jytype;
	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
	select max(id) into :l_id from a_ry_dqm;
	if isnull(l_id) or l_id = '' then
		l_id = '1000000001'
	else
		l_id = string(dec(l_id) + 1)
	end if
	insert into a_ry_dqm
	values (:l_id,:gs_keyno,:jytype,:typename,:jyid,:ls_ry_addrid,:ls_ry_addrname,:mark);
else
end if
next

for i =1 to win_jykeyset.tab_1.tabpage_5.dw_qj.rowcount()
	if win_jykeyset.tab_1.tabpage_5.dw_qj.getitemstring(i,'rysh') = '1' or win_jykeyset.tab_1.tabpage_5.dw_qj.getitemstring(i,'rysp') = '1' then
	jytype = win_jykeyset.tab_1.tabpage_5.dw_qj.getitemstring(i,'jytype')
	select typename into :typename from a_bgml where jytype = :jytype;
	select jyid into :jyid from a_rycode where ryid = :gs_keyno;
	select max(id) into :l_id from a_ry_dqm;
	if isnull(l_id) or l_id = '' then
		l_id = '1000000001'
	else
		l_id = string(dec(l_id) + 1)
	end if
	insert into a_ry_dqm
	values (:l_id,:gs_keyno,:jytype,:typename,:jyid,:ls_ry_addrid,:ls_ry_addrname,:mark);
else
end if
next
commit;

end event

type ddlb_sheng from dropdownlistbox within win_dqm_init
event ue_init ( )
integer x = 137
integer y = 1456
integer width = 549
integer height = 384
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
boolean sorted = false
boolean vscrollbar = true
end type

event ue_init();uf_ddlb('sheng',this)
end event

event selectionchanged;string ls_mc,ls_id
ls_id = trim(mid(right(this.text,8),2,6))
ls_mc = trim(left(this.text,len(this.text) - 8))
st_addr.text = ls_id
parent.ddlb_shi.event ue_init(ls_id)
ddlb_quxian.reset()
ddlb_shi.text = ""
ddlb_quxian.text = ""
end event

type gb_1 from uo_groupbox_xzdm within win_dqm_init
integer x = 46
integer y = 1364
integer width = 2551
integer height = 228
integer taborder = 10
integer textsize = -10
string text = "µØÇøÂëÑ¡Ôñ"
end type

type ddlb_shi from dropdownlistbox within win_dqm_init
event ue_init ( string str )
integer x = 978
integer y = 1456
integer width = 549
integer height = 384
integer taborder = 50
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
boolean sorted = false
boolean vscrollbar = true
end type

event ue_init(string str);if str = '000000' then
	uf_ddlb('shi',this)
else
	string ls_sheng,ls_shi,ls_quxian
	ls_sheng = left(str,2) + '__00'
	ls_shi = left(str,2) + '0000'
	ls_quxian = '000000'
	
	datastore lds_1
	lds_1 = create datastore
	lds_1.dataobject = 'dat_xzdm'
	lds_1.settransobject(sqlca)
	lds_1.retrieve(ls_sheng,ls_shi,ls_quxian)
	
	long ll_row_count
	ll_row_count = lds_1.rowcount()
	
	if ll_row_count > 0 then
		string ls_mc,ls_id
		int i
		this.reset()
		for i = 1 to ll_row_count
			ls_mc = lds_1.getitemstring(i,'xzmc')
			ls_id = lds_1.getitemstring(i,'xzid')
			this.additem(ls_mc + '(' + ls_id + ')')
		next
	end if
	
	destroy lds_1
end if
end event

event selectionchanged;string ls_mc,ls_id
ls_id = trim(mid(right(this.text,8),2,6))
ls_mc = trim(left(this.text,len(this.text) - 8))
st_addr.text = ls_id
ddlb_quxian.text = ""
parent.ddlb_quxian.event ue_init(ls_id)
end event

type ddlb_quxian from dropdownlistbox within win_dqm_init
event ue_init ( string str )
integer x = 1842
integer y = 1456
integer width = 549
integer height = 384
integer taborder = 50
boolean bringtotop = true
integer textsize = -10
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
boolean sorted = false
boolean vscrollbar = true
end type

event ue_init(string str);if str = '000000' then
	uf_ddlb('quxian',this)
else
	string ls_sheng,ls_shi,ls_quxian
	ls_sheng = left(str,4) + '__'
	ls_shi = left(str,4) + '00'
	ls_quxian = '000000'
	
	datastore lds_1
	lds_1 = create datastore
	lds_1.dataobject = 'dat_xzdm'
	lds_1.settransobject(sqlca)
	lds_1.retrieve(ls_sheng,ls_shi,ls_quxian)
	
	long ll_row_count
	ll_row_count = lds_1.rowcount()
	
	if ll_row_count > 0 then
		string ls_mc,ls_id
		int i
		this.reset()
		for i = 1 to ll_row_count
			ls_mc = lds_1.getitemstring(i,'xzmc')
			ls_id = lds_1.getitemstring(i,'xzid')
			this.additem(ls_mc + '(' + ls_id + ')')
		next
	end if
	destroy lds_1
end if
end event

event selectionchanged;string ls_mc,ls_id
ls_id = trim(mid(right(this.text,8),2,6))
ls_mc = trim(left(this.text,len(this.text) - 8))
st_addr.text = ls_id
end event

