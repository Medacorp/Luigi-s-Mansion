execute unless score #missingno_56 Ticking matches 1 run function #e3_demo:room/original/missingno_56/load
execute as @e[tag=player,x=687,y=28,z=-80,dx=16,dy=7,dz=25] unless entity @s[scores={Room=72}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=687,y=28,z=-80,dx=16,dy=7,dz=25] Room 72

execute as @a[scores={Room=72}] run function e3_demo:room/original/missingno_56/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=72},limit=1] run function e3_demo:room/original/missingno_56/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_56.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=72},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_56{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_56.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time