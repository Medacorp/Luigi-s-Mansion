execute unless score #missingno_11 Ticking matches 1 run function #e3_demo:room/original/missingno_11/load
execute as @e[tag=player,x=713,y=28,z=-42,dx=7,dy=7,dz=13] unless entity @s[scores={Room=27}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=713,y=28,z=-42,dx=7,dy=7,dz=13] Room 27

execute as @a[scores={Room=27}] run function e3_demo:room/original/missingno_11/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=27},limit=1] run function e3_demo:room/original/missingno_11/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_11.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=27},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_11{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_11.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time