execute unless score #bath_room Ticking matches 1 run function #luigis_beta_mansion:room/original/bath_room/load
execute as @a[gamemode=!spectator,x=648,y=8,z=15,dx=12,dy=10,dz=14] unless entity @s[scores={Room=12}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=648,y=8,z=15,dx=12,dy=10,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 12
scoreboard players set #temp Room 12

execute as @e[scores={Room=12},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 649

execute as @a[gamemode=!spectator,scores={Room=12}] run function luigis_beta_mansion:room/original/bath_room/tick_per_player

function #luigis_beta_mansion:room/original/bath_room/interactions/room

clone 654 12 21 654 16 27 644 12 21

scoreboard players set #temp Room 12
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/bath_room/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.bath_room.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=12},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.bath_room{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.bath_room.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time