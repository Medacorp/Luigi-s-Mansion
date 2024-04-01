execute unless score #hallway_20 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_20/load
execute as @a[x=713,y=1,z=-22,dx=22,dy=7,dz=8] unless entity @s[scores={Room=59}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=713,y=1,z=-22,dx=22,dy=7,dz=8] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 59
tag @e[tag=ghost,scores={Room=59}] add no_hidden_move

execute as @a[scores={Room=59}] run function 3ds_remake:room/hidden/hallway_20/tick_per_player

function #3ds_remake:room/hidden/hallway_20/interactions/room

scoreboard players set #temp Room 59
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function 3ds_remake:room/hidden/hallway_20/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room