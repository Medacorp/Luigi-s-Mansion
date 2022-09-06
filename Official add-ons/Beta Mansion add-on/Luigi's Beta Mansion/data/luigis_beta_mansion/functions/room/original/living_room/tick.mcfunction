execute unless score #living_room Ticking matches 1 run function #luigis_beta_mansion:room/original/living_room/load
execute as @a[gamemode=!spectator,x=712,y=17,z=17,dx=17,dy=10,dz=21] unless entity @s[scores={Room=3}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=712,y=17,z=17,dx=17,dy=10,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 3
scoreboard players set #temp Room 3

execute as @a[gamemode=!spectator,scores={Room=3}] run function luigis_beta_mansion:room/original/living_room/tick_per_player

function #luigis_beta_mansion:room/original/living_room/interactions/room

scoreboard players set #temp Room 3
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/living_room/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.living_room.time_spent_in
execute if data storage luigis_mansion:data {found_e_gadd:1b} if entity @a[gamemode=!spectator,scores={Room=3},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.living_room{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.living_room.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time