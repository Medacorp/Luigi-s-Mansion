execute unless score #missingno_24 Ticking matches 1 run function #e3_demo:room/original/missingno_24/load
execute as @a[x=645,y=92,z=-9,dx=6,dy=7,dz=10] unless entity @s[scores={Room=40}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=645,y=92,z=-9,dx=6,dy=7,dz=10] Room 40
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 40
#/todelete

execute as @a[scores={Room=40}] run function e3_demo:room/original/missingno_24/tick_per_player

function #e3_demo:room/original/missingno_24/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=40},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_24/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_24.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=40},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_24{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_24.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time