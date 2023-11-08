//%attributes = {}
$roomNumber:=ds:C1482.Room.all().length

$room:=ds:C1482.Room.new()
$room.Name:=$1
$room.X:=$2
$room.Y:=$3
$room.ID:=$roomNumber+1
$room.save()