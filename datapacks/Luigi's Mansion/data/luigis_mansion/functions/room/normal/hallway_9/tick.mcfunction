execute unless score #hallway_9 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_9/load
execute as @a[gamemode=!spectator,x=679,y=17,z=-30,dx=6,dy=10,dz=42] unless entity @s[scores={Room=35}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=679,y=17,z=-30,dx=6,dy=10,dz=42] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 35
scoreboard players set #temp Room 35
tag @e[tag=ghost,scores={Room=35}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=35}] run function luigis_mansion:room/normal/hallway_9/tick_per_player

function #luigis_mansion:room/normal/hallway_9/interactions/room

scoreboard players set #temp Room 35
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_9/ghosts
tag @a[tag=same_room] remove same_room