execute unless score #bed_room_1 Ticking matches 1 run function #luigis_beta_mansion:room/original/bed_room_1/load
execute as @a[gamemode=!spectator,x=682,y=108,z=37,dx=17,dy=10,dz=20] unless entity @s[scores={Room=6}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=682,y=108,z=37,dx=17,dy=10,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 6
scoreboard players set #temp Room 6

execute as @a[gamemode=!spectator,scores={Room=6}] run function luigis_beta_mansion:room/original/bed_room_1/tick_per_player

function #luigis_beta_mansion:room/original/bed_room_1/interactions/room

scoreboard players set #temp Room 6
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/bed_room_1/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.bed_room_1.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=6},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.bed_room_1{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.bed_room_1.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time