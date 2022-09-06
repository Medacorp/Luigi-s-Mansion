execute unless score #hallway_10 Ticking matches 1 run function #luigis_mansion_3ds_remake:room/hidden/hallway_10/load
execute as @a[gamemode=!spectator,x=667,y=17,z=4,dx=11,dy=10,dz=8] unless entity @s[scores={Room=36}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=667,y=17,z=4,dx=11,dy=10,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 36
scoreboard players set #temp Room 36
tag @e[tag=ghost,scores={Room=36}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=36}] run function luigis_mansion_3ds_remake:room/hidden/hallway_10/tick_per_player

function #luigis_mansion_3ds_remake:room/hidden/hallway_10/interactions/room

scoreboard players set #temp Room 36
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion_3ds_remake:room/hidden/hallway_10/ghosts
tag @a[tag=same_room] remove same_room