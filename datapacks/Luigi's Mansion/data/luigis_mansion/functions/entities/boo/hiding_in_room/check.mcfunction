execute store result score #temp2 Room run data get storage luigis_mansion:data boos[-1].room
execute if score #temp Room = #temp2 Room run function luigis_mansion:entities/boo/hiding_in_room/spawn
data remove storage luigis_mansion:data boos[-1]
execute if data storage luigis_mansion:data boos[-1] run function luigis_mansion:entities/boo/hiding_in_room/check