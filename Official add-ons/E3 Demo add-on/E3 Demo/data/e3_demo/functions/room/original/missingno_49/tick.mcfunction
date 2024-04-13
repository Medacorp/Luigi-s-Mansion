execute unless score #missingno_49 Ticking matches 1 run function #e3_demo:room/original/missingno_49/load
execute as @a[x=744,y=28,z=54,dx=22,dy=7,dz=25] unless entity @s[scores={Room=65}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=744,y=28,z=54,dx=22,dy=7,dz=25] Room 65
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 65
#/todelete

execute as @a[scores={Room=65}] run function e3_demo:room/original/missingno_49/tick_per_player

function #e3_demo:room/original/missingno_49/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=65},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_49/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_49.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=65},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_49{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_49.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time