execute unless score #hallway_7 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_7/load
execute as @a[gamemode=!spectator,x=712,y=-1,z=-63,dx=8,dy=18,dz=21] unless entity @s[scores={Room=15}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=-1,z=-63,dx=8,dy=18,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 15
scoreboard players set #temp Room 15
tag @e[tag=ghost,scores={Room=15}] add no_hidden_move

execute as @a[scores={Room=15}] run function luigis_mansion:room/normal/hallway_7/tick_per_player

function #luigis_mansion:room/normal/hallway_7/interactions/room

scoreboard players set #temp Room 15
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_7/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room