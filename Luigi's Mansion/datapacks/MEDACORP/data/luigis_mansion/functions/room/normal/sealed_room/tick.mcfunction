execute unless score #sealed_room Ticking matches 1 run function #luigis_mansion:room/normal/sealed_room/load
execute as @a[gamemode=!spectator,x=693,y=17,z=-88,dx=17,dy=9,dz=33] unless entity @s[scores={Room=66}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=693,y=17,z=-88,dx=17,dy=9,dz=33] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 66

execute as @e[scores={Room=66},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 694

execute as @a[scores={Room=66}] run function luigis_mansion:room/normal/sealed_room/tick_per_player

function #luigis_mansion:room/normal/sealed_room/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=66},limit=1] run function luigis_mansion:room/normal/sealed_room/ghosts