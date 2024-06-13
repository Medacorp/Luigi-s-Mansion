execute unless score #missingno_31 Ticking matches 1 run function #e3_demo:room/original/missingno_31/load
execute as @a[x=673,y=10,z=64,dx=15,dy=7,dz=27] unless entity @s[scores={Room=47}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=673,y=10,z=64,dx=15,dy=7,dz=27] Room 47
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 47
#/todelete

execute as @a[scores={Room=47}] run function e3_demo:room/original/missingno_31/tick_per_player

function #e3_demo:room/original/missingno_31/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=47},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_31/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_31.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=47},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_31{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_31.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time