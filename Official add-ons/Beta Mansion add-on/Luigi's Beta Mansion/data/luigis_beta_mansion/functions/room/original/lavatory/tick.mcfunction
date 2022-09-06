execute unless score #lavatory Ticking matches 1 run function #luigis_beta_mansion:room/original/lavatory/load
execute as @a[gamemode=!spectator,x=660,y=8,z=34,dx=8,dy=10,dz=14] unless entity @s[scores={Room=13}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=660,y=8,z=34,dx=8,dy=10,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 13
scoreboard players set #temp Room 13

execute as @e[scores={Room=13},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 661

execute as @a[gamemode=!spectator,scores={Room=13}] run function luigis_beta_mansion:room/original/lavatory/tick_per_player

function #luigis_beta_mansion:room/original/lavatory/interactions/room

execute if block 664 12 44 minecraft:oak_trapdoor run clone 664 12 44 664 12 44 658 12 44
execute if block 663 14 37 minecraft:oak_trapdoor[open=true] run setblock 659 14 37 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 37 minecraft:oak_trapdoor[open=false] run setblock 659 14 37 minecraft:oak_trapdoor[open=false,facing=west,half=top]
execute if block 663 14 36 minecraft:oak_trapdoor[open=true] run setblock 659 14 36 minecraft:oak_trapdoor[open=true,facing=west,half=top]
execute if block 663 14 36 minecraft:oak_trapdoor[open=false] run setblock 659 14 36 minecraft:oak_trapdoor[open=false,facing=west,half=top]

scoreboard players set #temp Room 13
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/lavatory/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.lavatory.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=13},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.lavatory{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.lavatory.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time