execute unless score #missingno_38 Ticking matches 1 run function #e3_demo:room/original/missingno_38/load
execute as @a[x=672,y=119,z=38,dx=10,dy=7,dz=7] unless entity @s[scores={Room=54}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=672,y=119,z=38,dx=10,dy=7,dz=7] Room 54
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 54
#/todelete

execute as @a[scores={Room=54}] run function e3_demo:room/original/missingno_38/tick_per_player

function #e3_demo:room/original/missingno_38/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=54},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_38/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_38.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=54},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_38{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_38.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time