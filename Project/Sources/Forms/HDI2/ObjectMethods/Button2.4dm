$dataFile:=Folder:C1567("/DATA/").file("data.4DD")
$dataFileSize:=$dataFile.size

If (Not:C34(Undefined:C82(Form:C1466.room)))
	
	$name:=Request:C163("Please type an equipment name"; "Equipment name")
	
	If ($name#"")
		$folder:=Folder:C1567("/RESOURCES/Pictures")
		
		$picture:=Select document:C905($folder.platformPath; "*"; "Select an image for your equipment"; 0)
		
		If (Not:C34($picture=""))
			
			$file:=$folder.file($picture)
			
			CreateEquipment(Form:C1466.room.ID; $name; $file)
			
			If ($dataFileSize=$dataFile.size)
				ALERT:C41("The data file size didn't change when adding this new record.\r\n For information, the size of the picture is "+String:C10($file.size))
			Else 
				ALERT:C41("The data file size changed from "+String:C10($dataFileSize)+" to "+String:C10($dataFile.size)+".\r\n For information, the size of the picture is "+String:C10($file.size))
			End if 
		End if 
	End if 
End if 