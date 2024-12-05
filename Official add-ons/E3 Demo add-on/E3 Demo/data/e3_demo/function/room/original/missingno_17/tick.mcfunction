execute unless score #missingno_17 Ticking matches 1 run function #e3_demo:room/original/missingno_17/load
execute as @e[tag=player,x=712,y=10,z=57,dx=8,dy=7,dz=20] unless entity @s[scores={Room=33}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=712,y=10,z=57,dx=8,dy=7,dz=20] Room 33

execute as @a[scores={Room=33}] run function e3_demo:room/original/missingno_17/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=33},limit=1] run function e3_demo:room/original/missingno_17/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_17.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=33},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_17{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_17.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time