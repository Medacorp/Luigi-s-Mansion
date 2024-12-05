execute unless score #childs_room Ticking matches 1 run function #e3_demo:room/original/childs_room/load
execute as @e[tag=player,x=737,y=19,z=53,dx=14,dy=7,dz=20] unless entity @s[scores={Room=7}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=737,y=19,z=53,dx=14,dy=7,dz=20] Room 7
#todelete - old furniture
scoreboard players set #temp Room 7
#/todelete

execute as @a[scores={Room=7}] run function e3_demo:room/original/childs_room/tick_per_player

#todelete - old furniture
function #e3_demo:room/original/childs_room/interactions/room
#/todelete

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=7},limit=1] run function e3_demo:room/original/childs_room/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.childs_room.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=7},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.childs_room{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.childs_room.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time