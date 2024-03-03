execute store result score #temp2 Room run data get storage luigis_mansion:data boos[-1].room
$execute if score #temp Room = #temp2 Room run data modify storage luigis_mansion:data entity set value {mansion:{namespace:"$(namespace)",id:"$(id)"}}
execute if score #temp Room = #temp2 Room run function luigis_mansion:entities/hidden_boo/load_in_room/spawn with storage luigis_mansion:data boos[-1].name
data remove storage luigis_mansion:data boos[-1]
$execute if data storage luigis_mansion:data boos[-1] run function luigis_mansion:entities/hidden_boo/load_in_room/check {namespace:"$(namespace)",id:"$(id)"}