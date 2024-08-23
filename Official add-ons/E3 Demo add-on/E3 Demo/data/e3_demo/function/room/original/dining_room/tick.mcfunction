execute unless score #dining_room Ticking matches 1 run function #e3_demo:room/original/dining_room/load
execute as @a[x=697,y=10,z=28,dx=14,dy=7,dz=30] unless entity @s[scores={Room=14}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=697,y=10,z=28,dx=14,dy=7,dz=30] Room 14
#todelete - old furniture
scoreboard players set #temp Room 14
#/todelete

execute as @a[scores={Room=14}] run function e3_demo:room/original/dining_room/tick_per_player

#todelete - old furniture
function #e3_demo:room/original/dining_room/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=14},tag=!spectator,limit=1] run function e3_demo:room/original/dining_room/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.dining_room.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=14},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.dining_room{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.dining_room.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time