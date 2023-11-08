var $mouseX; $mouseY; $mouseButton : Integer
var $left; $right; $top; $bottom : Integer

If (FORM Event:C1606.code=On Clicked:K2:4)
	GET MOUSE:C468($mouseX; $mouseY; $mouseButton)
	OBJECT GET COORDINATES:C663(*; FORM Event:C1606.objectName; $left; $top; $right; $bottom)
	
	Form:C1466.room:=ClickItem($mouseX-$left; $mouseY-$top)
	
	Form:C1466.equipmentSelection:=ds:C1482.Equipment.query("Room="+String:C10(Form:C1466.room.ID))
	
End if 