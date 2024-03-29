execute unless score #hallway_10 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_10/load
execute as @a[x=667,y=17,z=3,dx=11,dy=9,dz=8] unless entity @s[scores={Room=36}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=667,y=17,z=3,dx=11,dy=9,dz=8] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 36
tag @e[tag=ghost,scores={Room=36}] add no_hidden_move

execute as @a[scores={Room=36}] run function luigis_mansion:room/hidden/hallway_10/tick_per_player

function #luigis_mansion:room/hidden/hallway_10/interactions/room

scoreboard players set #temp Room 36
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_10/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room