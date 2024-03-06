execute unless score #missingno_6 Ticking matches 1 run function #e3_demo:room/original/missingno_6/load
execute as @a[gamemode=!spectator,x=667,y=17,z=4,dx=11,dy=9,dz=8] unless entity @s[scores={Room=22}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=667,y=17,z=4,dx=11,dy=9,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 22
scoreboard players set #temp Room 22

execute as @a[scores={Room=22}] run function e3_demo:room/original/missingno_6/tick_per_player

function #e3_demo:room/original/missingno_6/interactions/room

scoreboard players set #temp Room 22
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function e3_demo:room/original/missingno_6/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_6.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=22},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_6{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_6.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time