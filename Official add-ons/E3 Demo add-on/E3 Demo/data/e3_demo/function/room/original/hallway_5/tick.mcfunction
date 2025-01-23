execute unless score #hallway_5 Ticking matches 1 run function #e3_demo:room/original/hallway_5/load
execute as @e[tag=player,x=679,y=10,z=-29,dx=6,dy=7,dz=41] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=679,y=10,z=-29,dx=6,dy=7,dz=41] Room 10
#todelete - old furniture
scoreboard players set #temp Room 10
#/todelete

execute as @a[scores={Room=10}] run function e3_demo:room/original/hallway_5/tick_per_player

#todelete - old furniture
function #e3_demo:room/original/hallway_5/interactions/room
#/todelete

scoreboard players set #temp Room 10
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function e3_demo:room/original/hallway_5/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.hallway_5.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=10},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.hallway_5{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.hallway_5.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time