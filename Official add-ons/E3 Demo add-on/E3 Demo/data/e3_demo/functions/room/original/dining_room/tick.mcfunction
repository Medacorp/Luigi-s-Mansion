execute unless score #dining_room Ticking matches 1 run function #e3_demo:room/original/dining_room/load
execute as @a[gamemode=!spectator,x=697,y=8,z=28,dx=14,dy=9,dz=30] unless entity @s[scores={Room=14}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=697,y=8,z=28,dx=14,dy=9,dz=30] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 14

execute as @a[scores={Room=14}] run function e3_demo:room/original/dining_room/tick_per_player

function #e3_demo:room/original/dining_room/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=14},limit=1] run function e3_demo:room/original/dining_room/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.dining_room.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=14},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.dining_room{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.dining_room.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time