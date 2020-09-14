#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


^+x::
   ControlGetFocus, focused_control, ahk_class TDocumentForm
  
   IfInString, focused_control, SchView
	{
	Send,p
   	Sleep, 100
    	Send, w
	}
   else
	{
   	Send,p
   	Sleep, 100
    	Send, t
	}

Return

^+c::

   Send,p
   Sleep, 100
    Send, r
Return


^+s::

   Send,t
   Sleep, 100
    Send, o
   Sleep, 100
    Send, c
Return

