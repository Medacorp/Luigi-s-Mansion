execute unless score #missingno_13 Ticking matches 1 run function #e3_demo:room/original/missingno_13/load
execute as @a[gamemode=!spectator,x=695,y=8,z=-70,dx=17,dy=9,dz=33] unless entity @s[scores={Room=29}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=695,y=8,z=-70,dx=17,dy=9,dz=33] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 29

execute as @a[scores={Room=29}] run function e3_demo:room/original/missingno_13/tick_per_player

function #e3_demo:room/original/missingno_13/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=29},limit=1] run function e3_demo:room/original/missingno_13/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_13.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=29},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_13{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_13.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time