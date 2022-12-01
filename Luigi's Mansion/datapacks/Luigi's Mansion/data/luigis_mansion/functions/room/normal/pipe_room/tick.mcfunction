execute unless score #pipe_room Ticking matches 1 run function #luigis_mansion:room/normal/pipe_room/load
execute as @a[gamemode=!spectator,x=686,y=-1,z=-6,dx=14,dy=9,dz=18] unless entity @s[scores={Room=67}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=686,y=-1,z=-6,dx=14,dy=9,dz=18] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 67
scoreboard players set #temp Room 67

execute as @a[gamemode=!spectator,scores={Room=67}] run function luigis_mansion:room/normal/pipe_room/tick_per_player
execute if data storage luigis_mansion:data current_state.current_data.technical_data{closed_pipe:1b} run setblock 689 4 10 minecraft:lever[face=wall,facing=east,powered=true]
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{closed_pipe:1b} if block 689 4 10 minecraft:lever[face=wall,facing=east,powered=true] positioned 689 4 10 run tag @p[gamemode=!spectator] add close_pipe

function #luigis_mansion:room/normal/pipe_room/interactions/room

scoreboard players set #temp Room 67
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/pipe_room/ghosts
tag @a[tag=same_room] remove same_room