execute unless score #bed_room_1 Ticking matches 1 run function #e3_demo:room/original/bed_room_1/load
execute as @a[x=682,y=110,z=37,dx=17,dy=7,dz=20] unless entity @s[scores={Room=6}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=682,y=110,z=37,dx=17,dy=7,dz=20] Room 6
#todelete - old furniture
scoreboard players set #temp Room 6
#/todelete

execute as @a[scores={Room=6}] run function e3_demo:room/original/bed_room_1/tick_per_player

function #e3_demo:room/original/bed_room_1/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=6},tag=!spectator,limit=1] run function e3_demo:room/original/bed_room_1/ghosts

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.bed_room_1.time_spent_in
execute if entity @a[tag=!pause_dialog,scores={Room=6},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.bed_room_1{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.bed_room_1.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time