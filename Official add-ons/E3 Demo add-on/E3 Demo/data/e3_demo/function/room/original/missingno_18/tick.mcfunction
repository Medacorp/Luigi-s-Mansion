execute unless score #missingno_18 Ticking matches 1 run function #e3_demo:room/original/missingno_18/load
execute as @e[tag=player,x=737,y=10,z=53,dx=14,dy=7,dz=20] unless entity @s[scores={Room=34}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=737,y=10,z=53,dx=14,dy=7,dz=20] Room 34

execute as @a[scores={Room=34}] run function e3_demo:room/original/missingno_18/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=34},limit=1] run function e3_demo:room/original/missingno_18/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_18.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=34},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_18{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_18.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time