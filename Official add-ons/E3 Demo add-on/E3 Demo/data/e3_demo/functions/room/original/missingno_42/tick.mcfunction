execute unless score #missingno_42 Ticking matches 1 run function #e3_demo:room/original/missingno_42/load
execute as @a[x=734,y=1,z=-63,dx=14,dy=7,dz=21] unless entity @s[scores={Room=58}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=734,y=1,z=-63,dx=14,dy=7,dz=21] Room 58

execute as @a[scores={Room=58}] run function e3_demo:room/original/missingno_42/tick_per_player

function #e3_demo:room/original/missingno_42/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=58},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_42/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_42.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=58},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_42{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_42.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time