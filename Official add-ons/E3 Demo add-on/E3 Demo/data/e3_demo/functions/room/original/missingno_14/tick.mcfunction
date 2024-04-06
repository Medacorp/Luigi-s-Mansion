execute unless score #missingno_14 Ticking matches 1 run function #e3_demo:room/original/missingno_14/load
execute as @a[x=679,y=10,z=-88,dx=12,dy=7,dz=33] unless entity @s[scores={Room=30}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=679,y=10,z=-88,dx=12,dy=7,dz=33] Room 30

execute as @a[scores={Room=30}] run function e3_demo:room/original/missingno_14/tick_per_player

function #e3_demo:room/original/missingno_14/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=30},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_14/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_14.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=30},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_14{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_14.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time