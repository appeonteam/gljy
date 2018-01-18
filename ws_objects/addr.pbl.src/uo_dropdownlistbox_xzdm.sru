$PBExportHeader$uo_dropdownlistbox_xzdm.sru
forward
global type uo_dropdownlistbox_xzdm from dropdownlistbox
end type
end forward

global type uo_dropdownlistbox_xzdm from dropdownlistbox
integer width = 549
integer height = 452
integer textsize = -11
integer weight = 400
fontcharset fontcharset = gb2312charset!
fontpitch fontpitch = fixed!
fontfamily fontfamily = modern!
string facename = "ÐÂËÎÌå"
long textcolor = 33554432
boolean sorted = false
boolean vscrollbar = true
borderstyle borderstyle = stylelowered!
event uo_clicked pbm_bnclicked
event uo_losefocus pbm_cbnkillfocus
end type
global uo_dropdownlistbox_xzdm uo_dropdownlistbox_xzdm

type variables
string ls_property_text,ls_property_selected
end variables

event uo_clicked;ls_property_text = this.text

end event

event uo_losefocus;ls_property_selected = this.text
end event

on uo_dropdownlistbox_xzdm.create
end on

on uo_dropdownlistbox_xzdm.destroy
end on

event getfocus;this.triggerevent('uo_clicked')
end event

event losefocus;this.triggerevent('uo_losefocus')
end event

