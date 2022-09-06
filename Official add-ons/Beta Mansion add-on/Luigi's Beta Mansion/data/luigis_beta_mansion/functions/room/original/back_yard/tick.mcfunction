execute unless score #back_yard Ticking matches 1 run function #luigis_beta_mansion:room/original/back_yard/load
execute as @a[gamemode=!spectator,x=671,y=99,z=37,dx=14,dy=10,dz=19] unless entity @s[scores={Room=16}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=671,y=99,z=37,dx=14,dy=10,dz=19] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 16
scoreboard players set #temp Room 16

execute as @a[gamemode=!spectator,scores={Room=16}] run function luigis_beta_mansion:room/original/back_yard/tick_per_player

function #luigis_beta_mansion:room/original/back_yard/interactions/room

scoreboard players set #temp Room 16
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/back_yard/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.back_yard.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=16},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.back_yard{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.back_yard.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time