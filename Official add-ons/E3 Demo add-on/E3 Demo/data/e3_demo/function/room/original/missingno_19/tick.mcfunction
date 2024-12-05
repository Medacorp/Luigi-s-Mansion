execute unless score #missingno_19 Ticking matches 1 run function #e3_demo:room/original/missingno_19/load
execute as @e[tag=player,x=736,y=10,z=29,dx=14,dy=7,dz=21] unless entity @s[scores={Room=35}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=736,y=10,z=29,dx=14,dy=7,dz=21] Room 35

execute as @a[scores={Room=35}] run function e3_demo:room/original/missingno_19/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=35},limit=1] run function e3_demo:room/original/missingno_19/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_19.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=35},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_19{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_19.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time