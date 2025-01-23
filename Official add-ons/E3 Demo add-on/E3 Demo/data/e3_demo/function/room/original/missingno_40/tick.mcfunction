execute unless score #missingno_40 Ticking matches 1 run function #e3_demo:room/original/missingno_40/load
execute as @e[tag=player,x=740,y=28,z=40,dx=19,dy=7,dz=8] unless entity @s[scores={Room=56}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=740,y=28,z=40,dx=19,dy=7,dz=8] Room 56

execute as @a[scores={Room=56}] run function e3_demo:room/original/missingno_40/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=56},limit=1] run function e3_demo:room/original/missingno_40/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_40.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=56},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_40{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_40.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time