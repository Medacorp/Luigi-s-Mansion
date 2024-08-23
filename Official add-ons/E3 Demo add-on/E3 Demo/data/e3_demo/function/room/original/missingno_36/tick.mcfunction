execute unless score #missingno_36 Ticking matches 1 run function #e3_demo:room/original/missingno_36/load
execute as @a[x=724,y=28,z=-17,dx=16,dy=7,dz=8] unless entity @s[scores={Room=52}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=724,y=28,z=-17,dx=16,dy=7,dz=8] Room 52

execute as @a[scores={Room=52}] run function e3_demo:room/original/missingno_36/tick_per_player

execute if entity @a[tag=!pause_dialog,scores={Room=52},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_36/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_36.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=52},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_36{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_36.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time