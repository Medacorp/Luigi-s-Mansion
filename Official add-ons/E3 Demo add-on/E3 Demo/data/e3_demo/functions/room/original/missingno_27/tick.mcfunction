execute unless score #missingno_27 Ticking matches 1 run function #e3_demo:room/original/missingno_27/load
execute as @a[x=648,y=19,z=15,dx=12,dy=7,dz=14] unless entity @s[scores={Room=43}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=648,y=19,z=15,dx=12,dy=7,dz=14] Room 43
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 43
#/todelete

execute as @a[scores={Room=43}] run function e3_demo:room/original/missingno_27/tick_per_player

function #e3_demo:room/original/missingno_27/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=43},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_27/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_27.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=43},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_27{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_27.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time