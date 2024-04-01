execute unless score #pipe_room Ticking matches 1 run function #3ds_remake:room/hidden/pipe_room/load
execute as @a[x=686,y=1,z=-6,dx=14,dy=7,dz=18] unless entity @s[scores={Room=67}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=686,y=1,z=-6,dx=14,dy=7,dz=18] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 67

execute as @a[scores={Room=67}] run function 3ds_remake:room/hidden/pipe_room/tick_per_player
execute if data storage luigis_mansion:data current_state.current_data.technical_data{closed_pipe:1b} run setblock 689 4 10 minecraft:lever[face=wall,facing=east,powered=true]
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{closed_pipe:1b} if block 689 4 10 minecraft:lever[face=wall,facing=east,powered=true] unless data storage luigis_mansion:data dialogs[{room:67}] run function 3ds_remake:room/hidden/pipe_room/close_pipe

function #3ds_remake:room/hidden/pipe_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=67},tag=!spectator,limit=1] run function 3ds_remake:room/hidden/pipe_room/ghosts