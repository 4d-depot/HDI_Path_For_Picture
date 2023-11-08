//%attributes = {}
// This method creates a piece of furniture (a record into the Equipment table)

// $roomID: The id of the room where the piece of furniture will be placed
// $name: The name of the piece of furniture
// $picture: The 4D.file of the picture of the piece of furniture
#DECLARE($roomID : Integer; $name : Text; $picture : 4D:C1709.File)

CONFIRM:C162("Do you want to trace through the code?"; "Yes"; "No")
If (OK=1)
	TRACE:C157
End if 

$furniture:=ds:C1482.Equipment.new()
$furniture.Room:=$roomID
$furniture.Type:=$name

// I can assign a File to a picture field
$furniture.Picture:=$picture

// When saving the record only the path is put inside the data file
// As such, the data file stays small
$furniture.save()

// After saving the record, I can use the picture like any other picture
// For example, I display it inside the list box without any extra code
Form:C1466.equipmentSelection:=ds:C1482.Equipment.query("Room="+String:C10($roomID))