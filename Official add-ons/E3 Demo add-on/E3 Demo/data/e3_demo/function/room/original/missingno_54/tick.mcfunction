execute unless score #missingno_54 Ticking matches 1 run function #e3_demo:room/original/missingno_54/load
execute as @e[tag=player,x=734,y=19,z=-39,dx=14,dy=7,dz=20] unless entity @s[scores={Room=70}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=734,y=19,z=-39,dx=14,dy=7,dz=20] Room 70

execute as @a[scores={Room=70}] run function e3_demo:room/original/missingno_54/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=70},limit=1] run function e3_demo:room/original/missingno_54/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_54.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=70},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_54{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_54.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time