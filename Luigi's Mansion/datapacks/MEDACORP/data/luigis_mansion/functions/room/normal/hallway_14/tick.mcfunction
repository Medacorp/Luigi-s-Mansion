execute unless score #hallway_14 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_14/load
execute as @a[gamemode=!spectator,x=712,y=17,z=-55,dx=8,dy=18,dz=12] unless entity @s[scores={Room=40}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=17,z=-55,dx=8,dy=18,dz=12] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 40
tag @e[tag=ghost,scores={Room=40}] add no_hidden_move

execute as @a[scores={Room=40}] run function luigis_mansion:room/normal/hallway_14/tick_per_player

function #luigis_mansion:room/normal/hallway_14/interactions/room

scoreboard players set #temp Room 40
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_14/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room