execute unless score #missingno_15 Ticking matches 1 run function #e3_demo:room/original/missingno_15/load
execute as @a[x=734,y=10,z=-39,dx=14,dy=7,dz=20] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=734,y=10,z=-39,dx=14,dy=7,dz=20] Room 31

execute as @a[scores={Room=31}] run function e3_demo:room/original/missingno_15/tick_per_player

execute if entity @a[tag=!pause_dialog,scores={Room=31},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_15/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_15.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=31},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_15{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_15.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time