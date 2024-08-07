execute unless score #hallway_3 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_3/load
execute as @a[x=713,y=10,z=-10,dx=7,dy=7,dz=60] unless entity @s[scores={Room=11}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=713,y=10,z=-10,dx=7,dy=7,dz=60] Room 11
#todelete - old furniture
scoreboard players set #temp Room 11
#/todelete

execute as @a[scores={Room=11}] run function luigis_mansion:room/hidden/hallway_3/tick_per_player

function #luigis_mansion:room/hidden/hallway_3/interactions/room

scoreboard players set #temp Room 11
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function luigis_mansion:room/hidden/hallway_3/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room