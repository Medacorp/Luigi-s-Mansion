execute unless score #missingno_35 Ticking matches 1 run function #e3_demo:room/original/missingno_35/load
execute as @a[x=741,y=28,z=-17,dx=19,dy=7,dz=8] unless entity @s[scores={Room=51}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=741,y=28,z=-17,dx=19,dy=7,dz=8] Room 51
#todelete - old furniture
scoreboard players set #temp Room 51
#/todelete

execute as @a[scores={Room=51}] run function e3_demo:room/original/missingno_35/tick_per_player

function #e3_demo:room/original/missingno_35/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=51},tag=!spectator,limit=1] run function e3_demo:room/original/missingno_35/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_35.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=51},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_35{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_35.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time