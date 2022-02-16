execute unless score #breaker_room Ticking matches 1 run function #luigis_mansion:room/hidden/breaker_room/load
execute as @a[gamemode=!spectator,x=686,y=1,z=57,dx=14,dy=8,dz=21] unless entity @s[scores={Room=57}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=686,y=1,z=57,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 57
scoreboard players set #temp Room 57

execute as @e[scores={Room=57},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 699

execute as @a[gamemode=!spectator,scores={Room=57}] run function luigis_mansion:room/hidden/breaker_room/tick_per_player

function #luigis_mansion:room/hidden/breaker_room/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=57},limit=1] run function luigis_mansion:room/hidden/breaker_room/ghosts

function luigis_mansion:room/hidden/door/hallway_7_breaker_room