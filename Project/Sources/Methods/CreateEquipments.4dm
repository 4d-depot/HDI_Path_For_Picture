//%attributes = {}
ds:C1482.Equipment.all().drop()

$rooms:=ds:C1482.Room.all()

For ($i; 0; $rooms.length-1)
	
	$room:=$rooms[$i]
	
	Case of 
			
		: ($room.Name="Classroom@")
			
			CreateFurniture($room.ID; "Student chair 1")
			CreateFurniture($room.ID; "Student chair 2")
			CreateFurniture($room.ID; "Student chair 3")
			CreateFurniture($room.ID; "Teacher's desk")
			
		: ($room.Name="Library@")
			
			CreateFurniture($room.ID; "Library 1")
			CreateFurniture($room.ID; "Library 2")
			CreateFurniture($room.ID; "Table 1")
			CreateFurniture($room.ID; "Table 2")
			
		: ($room.Name="Gymnasium@")
			
			CreateFurniture($room.ID; "Table 1")
			CreateFurniture($room.ID; "Table 2")
			
		: ($room.Name="Cafeteria@")
			
			CreateFurniture($room.ID; "Table")
			CreateFurniture($room.ID; "Chair 1")
			CreateFurniture($room.ID; "Chair 2")
			CreateFurniture($room.ID; "Chair 3")
			
		: ($room.Name="Teacher@")
			
			CreateFurniture($room.ID; "Teacher's desk")
			CreateFurniture($room.ID; "Armchair")
			CreateFurniture($room.ID; "Chair")
			
		: ($room.Name="Toilets@")
			
			CreateFurniture($room.ID; "Toilets chair")
			
		: ($room.Name="Playground@")
			
		: ($room.Name="Auditorium@")
			
			CreateFurniture($room.ID; "Armchair 1")
			CreateFurniture($room.ID; "Armchair 2")
			CreateFurniture($room.ID; "Armchair 3")
			CreateFurniture($room.ID; "Armchair 4")
			
			
	End case 
	
End for 