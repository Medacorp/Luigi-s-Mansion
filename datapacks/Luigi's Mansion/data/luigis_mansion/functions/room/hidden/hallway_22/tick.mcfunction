execute unless score #hallway_22 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_22/load
execute as @a[gamemode=!spectator,x=653,y=-1,z=27,dx=33,dy=10,dz=12] unless entity @s[scores={Room=61}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=653,y=-1,z=27,dx=33,dy=10,dz=12] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 61
scoreboard players set #temp Room 61
tag @e[tag=ghost,scores={Room=61}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=61}] run function luigis_mansion:room/hidden/hallway_22/tick_per_player

function #luigis_mansion:room/hidden/hallway_22/interactions/room

scoreboard players set #temp Room 61
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_22/ghosts
tag @a[tag=same_room] remove same_room