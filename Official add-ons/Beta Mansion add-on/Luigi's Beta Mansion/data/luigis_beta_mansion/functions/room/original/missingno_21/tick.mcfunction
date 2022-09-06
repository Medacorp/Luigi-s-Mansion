execute unless score #missingno_21 Ticking matches 1 run function #luigis_beta_mansion:room/original/missingno_21/load
execute as @a[gamemode=!spectator,x=644,y=99,z=38,dx=27,dy=10,dz=18] unless entity @s[scores={Room=37}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=644,y=99,z=38,dx=27,dy=10,dz=18] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 37
scoreboard players set #temp Room 37

execute as @a[gamemode=!spectator,scores={Room=37}] run function luigis_beta_mansion:room/original/missingno_21/tick_per_player

function #luigis_beta_mansion:room/original/missingno_21/interactions/room

scoreboard players set #temp Room 37
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/missingno_21/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.missingno_21.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=37},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.missingno_21{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.missingno_21.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time