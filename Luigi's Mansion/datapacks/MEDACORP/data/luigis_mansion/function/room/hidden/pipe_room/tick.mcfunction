execute unless score #pipe_room Ticking matches 1 run function #luigis_mansion:room/hidden/pipe_room/load
execute as @e[tag=player,x=686,y=1,z=3,dx=14,dy=7,dz=18] unless entity @s[scores={Room=67}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=686,y=1,z=3,dx=14,dy=7,dz=18] Room 67
#todelete - old furniture
scoreboard players set #temp Room 67
#/todelete

execute as @a[scores={Room=67}] run function luigis_mansion:room/hidden/pipe_room/tick_per_player
execute if data storage luigis_mansion:data current_state.current_data.technical_data{closed_pipe:1b} run setblock 689 4 5 minecraft:lever[face=wall,facing=east,powered=true]
execute unless data storage luigis_mansion:data current_state.current_data.technical_data{closed_pipe:1b} if block 689 4 5 minecraft:lever[face=wall,facing=east,powered=true] unless data storage luigis_mansion:data dialogs[{room:67}] run function luigis_mansion:room/hidden/pipe_room/close_pipe

#todelete - old furniture
function #luigis_mansion:room/hidden/pipe_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=67},limit=1] run function luigis_mansion:room/hidden/pipe_room/ghosts