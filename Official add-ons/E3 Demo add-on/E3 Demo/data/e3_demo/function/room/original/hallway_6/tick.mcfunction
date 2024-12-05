execute unless score #hallway_6 Ticking matches 1 run function #e3_demo:room/original/hallway_6/load
execute as @e[tag=player,x=667,y=10,z=4,dx=11,dy=7,dz=8] unless entity @s[scores={Room=11}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=667,y=10,z=4,dx=11,dy=7,dz=8] Room 11
#todelete - old furniture
scoreboard players set #temp Room 11
#/todelete

execute as @a[scores={Room=11}] run function e3_demo:room/original/hallway_6/tick_per_player

#todelete - old furniture
function #e3_demo:room/original/hallway_6/interactions/room
#/todelete

scoreboard players set #temp Room 11
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function e3_demo:room/original/hallway_6/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.hallway_6.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=11},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.hallway_6{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.hallway_6.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time