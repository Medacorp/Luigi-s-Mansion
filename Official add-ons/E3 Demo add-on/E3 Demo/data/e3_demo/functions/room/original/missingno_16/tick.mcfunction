execute unless score #missingno_16 Ticking matches 1 run function #e3_demo:room/original/missingno_16/load
execute as @a[x=734,y=10,z=-63,dx=14,dy=7,dz=21] unless entity @s[scores={Room=32}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=734,y=10,z=-63,dx=14,dy=7,dz=21] Room 32

execute as @a[scores={Room=32}] run function e3_demo:room/original/missingno_16/tick_per_player

function #e3_demo:room/original/missingno_16/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=32},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_16/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_16.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=32},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_16{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_16.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time