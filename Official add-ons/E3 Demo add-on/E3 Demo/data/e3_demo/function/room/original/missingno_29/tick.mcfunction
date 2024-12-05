execute unless score #missingno_29 Ticking matches 1 run function #e3_demo:room/original/missingno_29/load
execute as @e[tag=player,x=660,y=19,z=-93,dx=12,dy=7,dz=22] unless entity @s[scores={Room=45}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=660,y=19,z=-93,dx=12,dy=7,dz=22] Room 45

execute as @a[scores={Room=45}] run function e3_demo:room/original/missingno_29/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=45},limit=1] run function e3_demo:room/original/missingno_29/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_29.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=45},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_29{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_29.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time