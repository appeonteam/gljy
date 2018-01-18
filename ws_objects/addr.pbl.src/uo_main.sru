$PBExportHeader$uo_main.sru
forward
global type uo_main from nonvisualobject
end type
end forward

global type uo_main from nonvisualobject
end type
global uo_main uo_main

forward prototypes
public subroutine uo_fun_updatetable ()
end prototypes

public subroutine uo_fun_updatetable ();//½¨Á¢±í
end subroutine

on uo_main.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_main.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

