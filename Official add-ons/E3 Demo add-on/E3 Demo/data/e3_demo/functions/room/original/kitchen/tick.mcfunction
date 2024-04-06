execute unless score #kitchen Ticking matches 1 run function #e3_demo:room/original/kitchen/load
execute as @a[x=697,y=10,z=61,dx=14,dy=7,dz=31] unless entity @s[scores={Room=15}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[x=697,y=10,z=61,dx=14,dy=7,dz=31] Room 15

execute as @a[scores={Room=15}] run function e3_demo:room/original/kitchen/tick_per_player

function #e3_demo:room/original/kitchen/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=15},tag=!spectator,limit=1] run function e3_demo:room/original/kitchen/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.kitchen.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=15},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.kitchen{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.kitchen.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time