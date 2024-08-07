execute unless score #hallway_2 Ticking matches 1 run function #e3_demo:room/original/hallway_2/load
execute as @a[x=722,y=19,z=42,dx=8,dy=7,dz=38] unless entity @s[scores={Room=4}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=722,y=19,z=42,dx=8,dy=7,dz=38] Room 4
#todelete - old furniture
scoreboard players set #temp Room 4
#/todelete

execute as @a[scores={Room=4}] run function e3_demo:room/original/hallway_2/tick_per_player

function #e3_demo:room/original/hallway_2/interactions/room

scoreboard players set #temp Room 4
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function e3_demo:room/original/hallway_2/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.hallway_2.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=4},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.hallway_2{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.hallway_2.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time