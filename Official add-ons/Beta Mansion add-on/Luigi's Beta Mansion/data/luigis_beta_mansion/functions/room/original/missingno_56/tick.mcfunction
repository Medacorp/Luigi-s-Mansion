execute unless score #missingno_56 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_56/load
execute as @a[gamemode=!spectator,x=687,y=26,z=-80,dx=16,dy=10,dz=25] unless entity @s[scores={Room=72}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=687,y=26,z=-80,dx=16,dy=10,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 72
scoreboard players set #temp Room 72

execute as @a[gamemode=!spectator,scores={Room=72}] run function luigis_beta_mansion:room/original/missingno_56/tick_per_player

function #luigis_beta_mansion:room/original/missingno_56/interactions/room

scoreboard players set #temp Room 72
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_56/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_56.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=72},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_56{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_56.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time