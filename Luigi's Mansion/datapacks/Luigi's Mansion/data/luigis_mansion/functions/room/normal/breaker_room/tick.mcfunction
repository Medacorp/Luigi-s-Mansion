execute unless score #breaker_room Ticking matches 1 run function #luigis_mansion:room/normal/breaker_room/load
execute as @a[gamemode=!spectator,x=686,y=-1,z=-63,dx=14,dy=9,dz=21] unless entity @s[scores={Room=57}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=686,y=-1,z=-63,dx=14,dy=9,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 57
scoreboard players set #temp Room 57

execute as @e[scores={Room=57},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 699

execute as @a[gamemode=!spectator,scores={Room=57}] run function luigis_mansion:room/normal/breaker_room/tick_per_player

function #luigis_mansion:room/normal/breaker_room/interactions/room

scoreboard players set #temp Room 57
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/breaker_room/ghosts
tag @a[tag=same_room] remove same_room