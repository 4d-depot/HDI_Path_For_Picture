//%attributes = {}

$furniture:=ds:C1482.Equipment.new()
$furniture.Room:=$1
$furniture.Type:=$2

Case of 
		
	: ($2="armchair@")
		
		$furniture.Picture:="/RESOURCES/Pictures/Armchair.jpg"
		
	: ($2="@chair@")
		
		$furniture.Picture:="/RESOURCES/Pictures/Chair "+String:C10(Mod:C98(Random:C100(); 4)+1)+".jpg"
		
	: ($2="@desk@")
		
		$furniture.Picture:="/RESOURCES/Pictures/Desk "+String:C10(Mod:C98(Random:C100(); 2)+1)+".jpg"
		
	: ($2="@table@")
		
		$furniture.Picture:="/RESOURCES/Pictures/Table "+String:C10(Mod:C98(Random:C100(); 2)+1)+".jpg"
		
	: ($2="@library@")
		
		$furniture.Picture:="/RESOURCES/Pictures/Library "+String:C10(Mod:C98(Random:C100(); 3)+1)+".jpg"
		
End case 

$furniture.save()