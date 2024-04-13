execute unless score #missingno_37 Ticking matches 1 run function #e3_demo:room/original/missingno_37/load
execute as @a[x=653,y=119,z=-42,dx=30,dy=25,dz=78] unless entity @s[scores={Room=53}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=653,y=119,z=-42,dx=30,dy=25,dz=78] Room 53
#todelete - needed for room-triggered shake sounds
scoreboard players set #temp Room 53
#/todelete

execute as @a[scores={Room=53}] run function e3_demo:room/original/missingno_37/tick_per_player

function #e3_demo:room/original/missingno_37/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=53},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_37/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_37.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=53},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_37{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_37.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time