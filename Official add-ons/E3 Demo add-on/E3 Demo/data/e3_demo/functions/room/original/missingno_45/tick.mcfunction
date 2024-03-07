execute unless score #missingno_45 Ticking matches 1 run function #e3_demo:room/original/missingno_45/load
execute as @a[gamemode=!spectator,x=653,y=-1,z=-22,dx=33,dy=9,dz=8] unless entity @s[scores={Room=61}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=653,y=-1,z=-22,dx=33,dy=9,dz=8] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 61

execute as @a[scores={Room=61}] run function e3_demo:room/original/missingno_45/tick_per_player

function #e3_demo:room/original/missingno_45/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=61},limit=1] run function e3_demo:room/original/missingno_45/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_45.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=61},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_45{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_45.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time