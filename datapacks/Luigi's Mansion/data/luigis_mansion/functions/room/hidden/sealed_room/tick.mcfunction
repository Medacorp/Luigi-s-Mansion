execute unless score #sealed_room Ticking matches 1 run function #luigis_mansion:room/hidden/sealed_room/load
execute as @a[gamemode=!spectator,x=693,y=17,z=70,dx=17,dy=10,dz=33] unless entity @s[scores={Room=66}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=693,y=17,z=70,dx=17,dy=10,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 66
scoreboard players set #temp Room 66

execute as @e[scores={Room=66},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 694

execute as @a[gamemode=!spectator,scores={Room=66}] run function luigis_mansion:room/hidden/sealed_room/tick_per_player

function #luigis_mansion:room/hidden/sealed_room/interactions/room

clone 695 24 76 695 24 76 693 24 76
clone 695 24 80 695 24 80 693 24 80
clone 704 22 81 704 22 81 684 22 81
clone 704 22 85 704 22 85 684 22 85

scoreboard players set #temp Room 66
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/sealed_room/ghosts
tag @a[tag=same_room] remove same_room