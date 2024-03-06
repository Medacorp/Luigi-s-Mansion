execute unless score #hallway_21 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_21/load
execute as @a[gamemode=!spectator,x=699,y=-1,z=-22,dx=13,dy=9,dz=8] unless entity @s[scores={Room=60}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=699,y=-1,z=-22,dx=13,dy=9,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 60
scoreboard players set #temp Room 60
tag @e[tag=ghost,scores={Room=60}] add no_hidden_move

execute as @a[scores={Room=60}] run function luigis_mansion:room/normal/hallway_21/tick_per_player

function #luigis_mansion:room/normal/hallway_21/interactions/room

scoreboard players set #temp Room 60
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_21/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room