execute unless score #hallway_8 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_8/load
execute as @e[tag=player,x=659,y=10,z=51,dx=8,dy=16,dz=26] unless entity @s[scores={Room=33}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=659,y=10,z=51,dx=8,dy=16,dz=26] Room 33
#todelete - old furniture
scoreboard players set #temp Room 33
#/todelete

execute as @a[scores={Room=33}] run function luigis_mansion:room/hidden/hallway_8/tick_per_player

#todelete - old furniture
function #luigis_mansion:room/hidden/hallway_8/interactions/room
#/todelete

scoreboard players set #temp Room 33
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_8/ghosts
tag @e[tag=luigi,tag=same_room] remove same_room
tag @e[tag=luigi,tag=exact_same_room] remove exact_same_room