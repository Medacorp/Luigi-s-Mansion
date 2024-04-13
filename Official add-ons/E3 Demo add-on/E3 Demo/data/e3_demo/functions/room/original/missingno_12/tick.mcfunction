execute unless score #missingno_12 Ticking matches 1 run function #e3_demo:room/original/missingno_12/load
execute as @a[x=712,y=1,z=-63,dx=8,dy=16,dz=21] unless entity @s[scores={Room=28}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=712,y=1,z=-63,dx=8,dy=16,dz=21] Room 28
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 28
#/todelete

execute as @a[scores={Room=28}] run function e3_demo:room/original/missingno_12/tick_per_player

function #e3_demo:room/original/missingno_12/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=28},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_12/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_12.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=28},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_12{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_12.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time