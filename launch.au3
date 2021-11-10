;~ #include <Constants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <ButtonConstants.au3>


_Main()


Func _Main()
	Local $idWork, $idLife

	GUICreate("what?", 190, 60,-1,-1,$WS_POPUPWINDOW,$WS_EX_TOPMOST)

	$idWork = GUICtrlCreateButton("Work",  10, 10, 80, 40,$BS_DEFPUSHBUTTON)
	$idLife = GUICtrlCreateButton("Life", 100, 10, 80, 40)

	GUISetState() ; display the GUI


	Do
		$iMsg = GUIGetMsg()

		Select
			Case $iMsg = $idWork
				Run (@ScriptDir & '\work.bat',@ScriptDir,@SW_HIDE)
				Exit
			Case $iMsg = $idLife
				Run (@ScriptDir & '\life.bat',@ScriptDir,@SW_HIDE)
				Exit
		EndSelect
	Until $iMsg = $GUI_EVENT_CLOSE

EndFunc   ;==>_Main
