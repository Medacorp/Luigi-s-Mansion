execute unless score #missingno_51 Ticking matches 1 run function #e3_demo:room/original/missingno_51/load
execute as @e[tag=player,x=693,y=19,z=-88,dx=17,dy=7,dz=33] unless entity @s[scores={Room=67}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=693,y=19,z=-88,dx=17,dy=7,dz=33] Room 67

execute as @a[scores={Room=67}] run function e3_demo:room/original/missingno_51/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=67},limit=1] run function e3_demo:room/original/missingno_51/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_51.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=67},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_51{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_51.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time