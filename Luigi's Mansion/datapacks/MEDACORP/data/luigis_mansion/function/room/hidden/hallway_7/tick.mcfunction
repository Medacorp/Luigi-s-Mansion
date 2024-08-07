execute unless score #hallway_7 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_7/load
execute as @a[x=712,y=1,z=57,dx=8,dy=16,dz=21] unless entity @s[scores={Room=15}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=712,y=1,z=57,dx=8,dy=16,dz=21] Room 15
#todelete - old furniture
scoreboard players set #temp Room 15
#/todelete

execute as @a[scores={Room=15}] run function luigis_mansion:room/hidden/hallway_7/tick_per_player

function #luigis_mansion:room/hidden/hallway_7/interactions/room

scoreboard players set #temp Room 15
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function luigis_mansion:room/hidden/hallway_7/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room