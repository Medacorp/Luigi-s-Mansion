execute unless score #missingno_32 Ticking matches 1 run function #e3_demo:room/original/missingno_32/load
execute as @e[tag=player,x=673,y=10,z=30,dx=15,dy=7,dz=16] unless entity @s[scores={Room=48}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=673,y=10,z=30,dx=15,dy=7,dz=16] Room 48

execute as @a[scores={Room=48}] run function e3_demo:room/original/missingno_32/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=48},limit=1] run function e3_demo:room/original/missingno_32/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_32.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=48},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_32{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_32.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time