execute unless score #hallway_4 Ticking matches 1 run function #e3_demo:room/original/hallway_4/load
execute as @e[tag=player,x=686,y=10,z=-23,dx=26,dy=7,dz=8] unless entity @s[scores={Room=9}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=686,y=10,z=-23,dx=26,dy=7,dz=8] Room 9

execute as @a[scores={Room=9}] run function e3_demo:room/original/hallway_4/tick_per_player

scoreboard players set #temp Room 9
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function e3_demo:room/original/hallway_4/ghosts
tag @e[tag=luigi,tag=same_room] remove same_room
tag @e[tag=luigi,tag=exact_same_room] remove exact_same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.hallway_4.time_spent_in
execute if entity @a[tag=!door_animation,scores={Room=9},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.hallway_4{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.hallway_4.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time