execute unless score #missingno_50 Ticking matches 1 run function #e3_demo:room/original/missingno_50/load
execute as @a[x=696,y=28,z=56,dx=17,dy=7,dz=25] unless entity @s[scores={Room=66}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=696,y=28,z=56,dx=17,dy=7,dz=25] Room 66
#todelete - old furniture
scoreboard players set #temp Room 66
#/todelete

execute as @a[scores={Room=66}] run function e3_demo:room/original/missingno_50/tick_per_player

function #e3_demo:room/original/missingno_50/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=66},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_50/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_50.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=66},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_50{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_50.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time