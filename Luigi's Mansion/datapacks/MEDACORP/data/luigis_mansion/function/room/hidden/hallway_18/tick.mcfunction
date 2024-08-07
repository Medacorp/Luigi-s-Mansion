execute unless score #hallway_18 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_18/load
execute as @a[x=723,y=28,z=-33,dx=16,dy=7,dz=8] unless entity @s[scores={Room=54}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=723,y=28,z=-33,dx=16,dy=7,dz=8] Room 54
#todelete - old furniture
scoreboard players set #temp Room 54
#/todelete

execute as @a[scores={Room=54}] run function luigis_mansion:room/hidden/hallway_18/tick_per_player

function #luigis_mansion:room/hidden/hallway_18/interactions/room

scoreboard players set #temp Room 54
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function luigis_mansion:room/hidden/hallway_18/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room