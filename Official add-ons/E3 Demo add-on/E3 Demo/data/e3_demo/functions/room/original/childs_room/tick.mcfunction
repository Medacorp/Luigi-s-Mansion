execute unless score #childs_room Ticking matches 1 run function #e3_demo:room/original/childs_room/load
execute as @a[x=737,y=17,z=53,dx=14,dy=9,dz=20] unless entity @s[scores={Room=7}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=737,y=17,z=53,dx=14,dy=9,dz=20] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 7

execute as @a[scores={Room=7}] run function e3_demo:room/original/childs_room/tick_per_player

function #e3_demo:room/original/childs_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=7},limit=1] run function e3_demo:room/original/childs_room/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.childs_room.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=7},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.childs_room{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.childs_room.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time