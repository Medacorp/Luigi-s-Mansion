execute unless score #missingno_5 Ticking matches 1 run function #e3_demo:room/original/missingno_5/load
execute as @e[tag=player,x=679,y=19,z=-29,dx=6,dy=7,dz=41] unless entity @s[scores={Room=21}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=679,y=19,z=-29,dx=6,dy=7,dz=41] Room 21

execute as @a[scores={Room=21}] run function e3_demo:room/original/missingno_5/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=21},limit=1] run function e3_demo:room/original/missingno_5/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_5.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=21},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_5{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_5.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time