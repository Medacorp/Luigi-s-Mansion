execute unless score #mirror_room Ticking matches 1 run function #luigis_mansion:room/hidden/mirror_room/load
execute as @a[gamemode=!spectator,x=734,y=8,z=57,dx=14,dy=9,dz=21] unless entity @s[scores={Room=21}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=734,y=8,z=57,dx=14,dy=9,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 21
scoreboard players set #temp Room 21

execute as @e[scores={Room=21},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 735

execute as @a[scores={Room=21}] run function luigis_mansion:room/hidden/mirror_room/tick_per_player

function #luigis_mansion:room/hidden/mirror_room/interactions/room

execute unless entity @e[tag=light_me,tag=!lit,scores={Room=21},limit=1] run tag @e[scores={Room=21},tag=furniture,tag=door] remove blockade

scoreboard players set #temp Room 21
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function luigis_mansion:room/hidden/mirror_room/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room