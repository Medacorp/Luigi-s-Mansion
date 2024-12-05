execute unless score #missingno_26 Ticking matches 1 run function #e3_demo:room/original/missingno_26/load
execute as @e[tag=player,x=660,y=19,z=34,dx=8,dy=7,dz=14] unless entity @s[scores={Room=42}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=660,y=19,z=34,dx=8,dy=7,dz=14] Room 42

execute as @a[scores={Room=42}] run function e3_demo:room/original/missingno_26/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=42},limit=1] run function e3_demo:room/original/missingno_26/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_26.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=42},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_26{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_26.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time