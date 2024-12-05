execute unless score #laundry_room Ticking matches 1 run function #luigis_mansion:room/normal/laundry_room/load
execute as @e[tag=player,x=712,y=10,z=57,dx=8,dy=7,dz=20] unless entity @s[scores={Room=22}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=712,y=10,z=57,dx=8,dy=7,dz=20] Room 22
#todelete - old furniture
scoreboard players set #temp Room 22
#/todelete

execute as @a[scores={Room=22}] run function luigis_mansion:room/normal/laundry_room/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/normal/laundry_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=22},limit=1] run function luigis_mansion:room/normal/laundry_room/ghosts