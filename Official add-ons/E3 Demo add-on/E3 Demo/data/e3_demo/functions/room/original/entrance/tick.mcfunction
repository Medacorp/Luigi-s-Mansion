execute unless score #entrance Ticking matches 1 run function #e3_demo:room/original/entrance/load
execute as @a[gamemode=!spectator,x=743,y=8,z=-2,dx=15,dy=18,dz=21] unless entity @s[scores={Room=1}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=743,y=8,z=-2,dx=15,dy=18,dz=21] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 1
tag @e[tag=ghost,scores={Room=1}] add no_hidden_move

execute as @a[scores={Room=1}] run function e3_demo:room/original/entrance/tick_per_player

execute if entity @a[gamemode=!spectator,x=751.0,y=11,z=9.0,distance=..5] run tag @e[type=minecraft:armor_stand,tag=first_key,limit=1] add play

function #e3_demo:room/original/entrance/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=1},limit=1] run function e3_demo:room/original/entrance/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.entrance.time_spent_in
execute if data storage luigis_mansion:data {found_e_gadd:1b} if entity @a[gamemode=!spectator,scores={Room=1},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.entrance{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.entrance.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time