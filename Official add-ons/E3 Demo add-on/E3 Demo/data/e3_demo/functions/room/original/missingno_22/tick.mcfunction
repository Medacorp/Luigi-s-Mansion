execute unless score #missingno_22 Ticking matches 1 run function #e3_demo:room/original/missingno_22/load
execute as @a[x=637,y=8,z=-62,dx=12,dy=9,dz=33] unless entity @s[scores={Room=38}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=637,y=8,z=-62,dx=12,dy=9,dz=33] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 38

execute as @a[scores={Room=38}] run function e3_demo:room/original/missingno_22/tick_per_player

function #e3_demo:room/original/missingno_22/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=38},limit=1] run function e3_demo:room/original/missingno_22/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_22.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=38},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_22{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_22.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time