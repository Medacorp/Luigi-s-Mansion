execute unless score #missingno_28 Ticking matches 1 run function #e3_demo:room/original/missingno_28/load
execute as @e[tag=player,x=652,y=19,z=-29,dx=12,dy=7,dz=28] unless entity @s[scores={Room=44}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=652,y=19,z=-29,dx=12,dy=7,dz=28] Room 44

execute as @a[scores={Room=44}] run function e3_demo:room/original/missingno_28/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=44},limit=1] run function e3_demo:room/original/missingno_28/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_28.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=44},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_28{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_28.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time