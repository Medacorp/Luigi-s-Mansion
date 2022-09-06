execute unless score #hallway_5 Ticking matches 1 run function #luigis_beta_mansion:room/original/hallway_5/load
execute as @a[gamemode=!spectator,x=679,y=8,z=-29,dx=6,dy=10,dz=41] unless entity @s[scores={Room=10}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=679,y=8,z=-29,dx=6,dy=10,dz=41] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 10
scoreboard players set #temp Room 10
tag @e[tag=ghost,scores={Room=10}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=10}] run function luigis_beta_mansion:room/original/hallway_5/tick_per_player

function #luigis_beta_mansion:room/original/hallway_5/interactions/room

scoreboard players set #temp Room 10
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_beta_mansion:room/original/hallway_5/ghosts
tag @a[tag=same_room] remove same_room

execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.rooms.hallway_5.time_spent_in
execute if entity @a[gamemode=!spectator,scores={Room=10},limit=1] if data storage luigis_mansion:data current_state.current_data.rooms.hallway_5{cleared:0b} store result storage luigis_mansion:data current_state.current_data.rooms.hallway_5.time_spent_in int 1 run scoreboard players add #temp Time 1
scoreboard players reset #temp Time