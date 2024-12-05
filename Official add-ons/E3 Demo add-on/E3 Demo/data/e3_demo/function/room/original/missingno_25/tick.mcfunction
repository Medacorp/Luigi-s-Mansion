execute unless score #missingno_25 Ticking matches 1 run function #e3_demo:room/original/missingno_25/load
execute as @e[tag=player,x=637,y=19,z=-62,dx=12,dy=7,dz=33] unless entity @s[scores={Room=41}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=637,y=19,z=-62,dx=12,dy=7,dz=33] Room 41

execute as @a[scores={Room=41}] run function e3_demo:room/original/missingno_25/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=41},limit=1] run function e3_demo:room/original/missingno_25/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_25.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=41},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_25{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_25.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time