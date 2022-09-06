execute unless score #missingno_7 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_7/load
execute as @a[gamemode=!spectator,x=686,y=17,z=-23,dx=10,dy=10,dz=8] unless entity @s[scores={Room=23}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=686,y=17,z=-23,dx=10,dy=10,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 23
scoreboard players set #temp Room 23

execute as @a[gamemode=!spectator,scores={Room=23}] run function luigis_beta_mansion:room/original/missingno_7/tick_per_player

function #luigis_beta_mansion:room/original/missingno_7/interactions/room

scoreboard players set #temp Room 23
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_7/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_7.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=23},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_7{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_7.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time