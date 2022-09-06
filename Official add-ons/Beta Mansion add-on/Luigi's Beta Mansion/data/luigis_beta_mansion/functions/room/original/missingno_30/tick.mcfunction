execute unless score #missingno_30 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_30/load
execute as @a[gamemode=!spectator,x=640,y=14,z=-83,dx=10,dy=13,dz=10] unless entity @s[scores={Room=46}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=640,y=14,z=-83,dx=10,dy=13,dz=10] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 46
scoreboard players set #temp Room 46

execute as @a[gamemode=!spectator,scores={Room=46}] run function luigis_beta_mansion:room/original/missingno_30/tick_per_player

function #luigis_beta_mansion:room/original/missingno_30/interactions/room

scoreboard players set #temp Room 46
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_30/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_30.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=46},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_30{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_30.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time