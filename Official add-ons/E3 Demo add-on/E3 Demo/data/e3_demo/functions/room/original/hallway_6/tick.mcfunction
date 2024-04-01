execute unless score #hallway_6 Ticking matches 1 run function #e3_demo:room/original/hallway_6/load
execute as @a[x=667,y=10,z=4,dx=11,dy=7,dz=8] unless entity @s[scores={Room=11}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=667,y=10,z=4,dx=11,dy=7,dz=8] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 11
tag @e[tag=ghost,scores={Room=11}] add no_hidden_move

execute as @a[scores={Room=11}] run function e3_demo:room/original/hallway_6/tick_per_player

function #e3_demo:room/original/hallway_6/interactions/room

scoreboard players set #temp Room 11
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function e3_demo:room/original/hallway_6/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.hallway_6.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=11},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.hallway_6{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.hallway_6.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time