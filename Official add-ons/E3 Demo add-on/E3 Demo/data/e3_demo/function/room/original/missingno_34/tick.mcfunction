execute unless score #missingno_34 Ticking matches 1 run function #e3_demo:room/original/missingno_34/load
execute as @a[x=732,y=28,z=-59,dx=14,dy=7,dz=25] unless entity @s[scores={Room=50}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=732,y=28,z=-59,dx=14,dy=7,dz=25] Room 50

execute as @a[scores={Room=50}] run function e3_demo:room/original/missingno_34/tick_per_player

execute if entity @a[tag=!pause_dialog,scores={Room=50},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_34/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_34.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=50},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_34{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_34.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time