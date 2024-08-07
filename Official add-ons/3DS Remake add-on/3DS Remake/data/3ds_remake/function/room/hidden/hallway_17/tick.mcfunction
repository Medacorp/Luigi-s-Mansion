execute unless score #hallway_17 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_17/load
execute as @a[x=724,y=28,z=-17,dx=16,dy=7,dz=8] unless entity @s[scores={Room=52}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=724,y=28,z=-17,dx=16,dy=7,dz=8] Room 52
#todelete - old furniture
scoreboard players set #temp Room 52
#/todelete

execute as @a[scores={Room=52}] run function 3ds_remake:room/hidden/hallway_17/tick_per_player

function #3ds_remake:room/hidden/hallway_17/interactions/room

scoreboard players set #temp Room 52
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function 3ds_remake:room/hidden/hallway_17/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room