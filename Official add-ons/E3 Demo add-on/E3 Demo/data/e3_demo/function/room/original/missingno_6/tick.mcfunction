execute unless score #missingno_6 Ticking matches 1 run function #e3_demo:room/original/missingno_6/load
execute as @e[tag=player,x=667,y=19,z=4,dx=11,dy=7,dz=8] unless entity @s[scores={Room=22}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=667,y=19,z=4,dx=11,dy=7,dz=8] Room 22

execute as @a[scores={Room=22}] run function e3_demo:room/original/missingno_6/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=22},limit=1] run function e3_demo:room/original/missingno_6/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_6.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=22},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_6{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_6.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time