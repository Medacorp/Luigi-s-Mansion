execute unless score #missingno_2 Ticking matches 1 run function #e3_demo:room/original/missingno_2/load
execute as @e[tag=player,x=676,y=19,z=55,dx=12,dy=7,dz=21] unless entity @s[scores={Room=18}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=676,y=19,z=55,dx=12,dy=7,dz=21] Room 18

execute as @a[scores={Room=18}] run function e3_demo:room/original/missingno_2/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=18},limit=1] run function e3_demo:room/original/missingno_2/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_2.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=18},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_2{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_2.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time