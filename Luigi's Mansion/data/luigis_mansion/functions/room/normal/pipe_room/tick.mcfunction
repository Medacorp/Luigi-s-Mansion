execute unless score #pipe_room Ticking matches 1 run function #luigis_mansion:room/normal/pipe_room/load
execute as @a[x=685,y=93,z=-15,dx=14,dy=6,dz=18] unless entity @s[scores={Room=54}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=685,y=93,z=-15,dx=14,dy=6,dz=18] run scoreboard players set @s Room 54

execute as @a[gamemode=!spectator,x=687,y=93,z=-13,dx=10,dy=6,dz=14] run function luigis_mansion:room/normal/pipe_room/tick_per_player
execute if data storage luigis_mansion:data current_state.current_data.technical_data{closed_pipe:1b} run setblock 688 95 1 minecraft:lever[face=wall,facing=east,powered=true]
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{closed_pipe:1b} if block 688 95 1 minecraft:lever[face=wall,facing=east,powered=true] positioned 688 95 1 run tag @p[gamemode=!spectator] add close_pipe

function #luigis_mansion:room/normal/pipe_room/interactions/room

function luigis_mansion:room/normal/pipe_room/ghosts

function luigis_mansion:room/normal/door/basement_hallway_pipe_room