execute unless score #missingno_52 Ticking matches 1 run function #e3_demo:room/original/missingno_52/load
execute as @e[tag=player,x=686,y=1,z=-6,dx=14,dy=7,dz=18] unless entity @s[scores={Room=68}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=686,y=1,z=-6,dx=14,dy=7,dz=18] Room 68

execute as @a[scores={Room=68}] run function e3_demo:room/original/missingno_52/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=68},limit=1] run function e3_demo:room/original/missingno_52/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_52.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=68},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_52{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_52.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time