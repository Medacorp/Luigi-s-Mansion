execute unless score #hallway_16 Ticking matches 1 run function #luigis_mansion_3ds_remake:room/hidden/hallway_16/load
execute as @a[gamemode=!spectator,x=741,y=26,z=-17,dx=23,dy=9,dz=8] unless entity @s[scores={Room=51}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=741,y=26,z=-17,dx=23,dy=9,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 51
scoreboard players set #temp Room 51
tag @e[tag=ghost,scores={Room=51}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=51}] run function luigis_mansion_3ds_remake:room/hidden/hallway_16/tick_per_player

function #luigis_mansion_3ds_remake:room/hidden/hallway_16/interactions/room

scoreboard players set #temp Room 51
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion_3ds_remake:room/hidden/hallway_16/ghosts
tag @a[tag=same_room] remove same_room