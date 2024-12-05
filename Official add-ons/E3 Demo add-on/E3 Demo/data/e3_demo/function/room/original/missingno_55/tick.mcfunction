execute unless score #missingno_55 Ticking matches 1 run function #e3_demo:room/original/missingno_55/load
execute as @e[tag=player,x=734,y=19,z=-63,dx=14,dy=7,dz=21] unless entity @s[scores={Room=71}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=734,y=19,z=-63,dx=14,dy=7,dz=21] Room 71

execute as @a[scores={Room=71}] run function e3_demo:room/original/missingno_55/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=71},limit=1] run function e3_demo:room/original/missingno_55/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_55.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=71},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_55{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_55.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time