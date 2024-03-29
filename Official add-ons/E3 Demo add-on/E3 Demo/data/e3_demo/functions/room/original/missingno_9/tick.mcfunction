execute unless score #missingno_9 Ticking matches 1 run function #e3_demo:room/original/missingno_9/load
execute as @a[x=713,y=17,z=-42,dx=7,dy=9,dz=27] unless entity @s[scores={Room=25}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=713,y=17,z=-42,dx=7,dy=9,dz=27] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 25

execute as @a[scores={Room=25}] run function e3_demo:room/original/missingno_9/tick_per_player

function #e3_demo:room/original/missingno_9/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=25},limit=1] run function e3_demo:room/original/missingno_9/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_9.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=25},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_9{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_9.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time