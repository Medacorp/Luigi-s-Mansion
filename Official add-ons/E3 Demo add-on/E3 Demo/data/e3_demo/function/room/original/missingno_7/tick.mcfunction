execute unless score #missingno_7 Ticking matches 1 run function #e3_demo:room/original/missingno_7/load
execute as @a[x=686,y=19,z=-23,dx=10,dy=7,dz=8] unless entity @s[scores={Room=23}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=686,y=19,z=-23,dx=10,dy=7,dz=8] Room 23

execute as @a[scores={Room=23}] run function e3_demo:room/original/missingno_7/tick_per_player

execute if entity @a[tag=!pause_dialog,scores={Room=23},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_7/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_7.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=23},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_7{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_7.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time