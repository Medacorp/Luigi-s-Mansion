execute unless score #hallway_7 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_7/load
execute as @e[tag=player,x=712,y=1,z=-63,dx=8,dy=16,dz=21] unless entity @s[scores={Room=15}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=712,y=1,z=-63,dx=8,dy=16,dz=21] Room 15
#todelete - old furniture
scoreboard players set #temp Room 15
#/todelete

execute as @a[scores={Room=15}] run function 3ds_remake:room/hidden/hallway_7/tick_per_player

#todelete - old furniture
function #3ds_remake:room/hidden/hallway_7/interactions/room
#/todelete

scoreboard players set #temp Room 15
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function 3ds_remake:room/hidden/hallway_7/ghosts
tag @e[tag=luigi,tag=same_room] remove same_room
tag @e[tag=luigi,tag=exact_same_room] remove exact_same_room