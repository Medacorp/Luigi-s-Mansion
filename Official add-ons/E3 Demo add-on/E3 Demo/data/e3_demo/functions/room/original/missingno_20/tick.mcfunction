execute unless score #missingno_20 Ticking matches 1 run function #e3_demo:room/original/missingno_20/load
execute as @a[gamemode=!spectator,x=652,y=8,z=-29,dx=12,dy=9,dz=28] unless entity @s[scores={Room=36}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=652,y=8,z=-29,dx=12,dy=9,dz=28] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 36

execute as @a[scores={Room=36}] run function e3_demo:room/original/missingno_20/tick_per_player

function #e3_demo:room/original/missingno_20/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=36},limit=1] run function e3_demo:room/original/missingno_20/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_20.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=36},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_20{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_20.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time