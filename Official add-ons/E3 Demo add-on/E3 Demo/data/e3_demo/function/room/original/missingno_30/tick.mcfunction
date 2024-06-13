execute unless score #missingno_30 Ticking matches 1 run function #e3_demo:room/original/missingno_30/load
execute as @a[x=640,y=15,z=-83,dx=10,dy=12,dz=10] unless entity @s[scores={Room=46}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=640,y=15,z=-83,dx=10,dy=12,dz=10] Room 46
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 46
#/todelete

execute as @a[scores={Room=46}] run function e3_demo:room/original/missingno_30/tick_per_player

function #e3_demo:room/original/missingno_30/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=46},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_30/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_30.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=46},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_30{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_30.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time