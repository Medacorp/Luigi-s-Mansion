execute unless score #missingno_43 Ticking matches 1 run function #e3_demo:room/original/missingno_43/load
execute as @a[x=713,y=1,z=-22,dx=22,dy=7,dz=8] unless entity @s[scores={Room=59}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=713,y=1,z=-22,dx=22,dy=7,dz=8] Room 59
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 59
#/todelete

execute as @a[scores={Room=59}] run function e3_demo:room/original/missingno_43/tick_per_player

function #e3_demo:room/original/missingno_43/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=59},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_43/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_43.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=59},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_43{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_43.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time