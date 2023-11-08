//%attributes = {}
$X:=$1
$Y:=$2

$rooms:=ds:C1482.Room.all()
$shortestDistance:=1000000
$selectedRoom:=-1

For ($i; 0; $rooms.length-1)
	
	$distanceX:=$X-$rooms[$i].X
	$distanceY:=$Y-$rooms[$i].Y
	
	$distance:=($distanceX*$distanceX)+($distanceY*$distanceY)
	
	If ($distance<$shortestDistance)
		
		$shortestDistance:=$distance
		$selectedRoom:=$i
		
	End if 
	
End for 

return $rooms[$selectedRoom]