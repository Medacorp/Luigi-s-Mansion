execute unless score #breaker_room Ticking matches 1 run function #luigis_mansion:room/normal/breaker_room/load
execute as @a[gamemode=!spectator,x=686,y=1,z=-63,dx=14,dy=8,dz=21] unless entity @s[scores={Room=57}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=686,y=1,z=-63,dx=14,dy=8,dz=21] unless entity @s[type=!minecraft:player,scores={Room=-2147483648..}] run scoreboard players set @s Room 57

execute as @e[scores={Room=57},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 699

execute as @a[gamemode=!spectator,scores={Room=57}] run function luigis_mansion:room/normal/breaker_room/tick_per_player

function #luigis_mansion:room/normal/breaker_room/interactions/room

function luigis_mansion:room/normal/breaker_room/ghosts

function luigis_mansion:room/normal/door/hallway_7_breaker_room