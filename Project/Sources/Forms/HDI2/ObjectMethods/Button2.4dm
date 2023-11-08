If (Not:C34(Undefined:C82(Form:C1466.room)))
	
	$name:=Request:C163("Please type an equipment name"; "Equipment name")
	
	If ($name#"")
		$folder:=Folder:C1567("/RESOURCES/Pictures")
		
		$picture:=Select document:C905($folder.platformPath; "*"; "Select an image for your equipment"; 0)
		
		If (Not:C34($picture=""))
			
			$file:=$folder.file($picture)
			
			CreateEquipment(Form:C1466.room.ID; $name; $file)
			
		End if 
	End if 
End if 