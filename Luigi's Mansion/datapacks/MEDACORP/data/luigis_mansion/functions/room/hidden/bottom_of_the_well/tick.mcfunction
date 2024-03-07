execute unless score #bottom_of_the_well Ticking matches 1 run function #luigis_mansion:room/hidden/bottom_of_the_well/load
execute as @a[gamemode=!spectator,x=645,y=90,z=14,dx=6,dy=7,dz=10] unless entity @s[x=648.5,y=93,z=25.5,distance=..0.7] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=645,y=90,z=14,dx=6,dy=7,dz=10] unless entity @s[x=648.5,y=93,z=25.5,distance=..0.7] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 31
tag @e[tag=ghost,scores={Room=31}] add no_hidden_move

execute as @e[scores={Room=31},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorZ 41

execute as @a[scores={Room=31}] run function luigis_mansion:room/hidden/bottom_of_the_well/tick_per_player

function #luigis_mansion:room/hidden/bottom_of_the_well/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=31},limit=1] run function luigis_mansion:room/hidden/bottom_of_the_well/ghosts