execute unless score #missingno_57 Ticking matches 1 run function #e3_demo:room/original/missingno_57/load
execute as @e[tag=player,x=634,y=92,z=-27,dx=20,dy=7,dz=18] unless entity @s[x=645,y=92,z=-9,dx=6,dy=7,dz=10] unless entity @s[scores={Room=73}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=634,y=92,z=-27,dx=20,dy=7,dz=18] unless entity @s[x=645,y=92,z=-9,dx=6,dy=7,dz=10] run scoreboard players set @s[tag=!separated_camera] Room 73

execute as @a[scores={Room=73}] run function e3_demo:room/original/missingno_57/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=73},limit=1] run function e3_demo:room/original/missingno_57/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_57.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=73},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_57{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_57.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time