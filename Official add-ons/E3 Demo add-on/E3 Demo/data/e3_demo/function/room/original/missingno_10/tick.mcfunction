execute unless score #missingno_10 Ticking matches 1 run function #e3_demo:room/original/missingno_10/load
execute as @a[x=712,y=19,z=-55,dx=8,dy=16,dz=12] unless entity @s[scores={Room=26}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=712,y=19,z=-55,dx=8,dy=16,dz=12] Room 26
#todelete - old furniture
scoreboard players set #temp Room 26
#/todelete

execute as @a[scores={Room=26}] run function e3_demo:room/original/missingno_10/tick_per_player

function #e3_demo:room/original/missingno_10/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=26},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_10/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_10.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=26},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_10{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_10.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time