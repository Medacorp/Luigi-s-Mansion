execute unless score #missingno_4 Ticking matches 1 run function #e3_demo:room/original/missingno_4/load
execute as @e[tag=player,x=678,y=10,z=-55,dx=8,dy=16,dz=25] unless entity @s[scores={Room=20}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=678,y=10,z=-55,dx=8,dy=16,dz=25] Room 20

execute as @a[scores={Room=20}] run function e3_demo:room/original/missingno_4/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=20},limit=1] run function e3_demo:room/original/missingno_4/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_4.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=20},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_4{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_4.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time