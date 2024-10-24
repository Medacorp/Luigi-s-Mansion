execute unless score #hallway_3 Ticking matches 1 run function #e3_demo:room/original/hallway_3/load
execute as @a[x=713,y=10,z=-35,dx=7,dy=7,dz=60] unless entity @s[scores={Room=8}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=713,y=10,z=-35,dx=7,dy=7,dz=60] Room 8

execute as @a[scores={Room=8}] run function e3_demo:room/original/hallway_3/tick_per_player

scoreboard players set #temp Room 8
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function e3_demo:room/original/hallway_3/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.hallway_3.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=8},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.hallway_3{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.hallway_3.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time