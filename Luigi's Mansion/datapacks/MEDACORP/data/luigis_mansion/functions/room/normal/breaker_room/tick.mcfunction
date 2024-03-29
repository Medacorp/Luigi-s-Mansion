execute unless score #breaker_room Ticking matches 1 run function #luigis_mansion:room/normal/breaker_room/load
execute as @a[x=686,y=-1,z=-63,dx=14,dy=9,dz=21] unless entity @s[scores={Room=57}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=686,y=-1,z=-63,dx=14,dy=9,dz=21] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 57

execute as @e[scores={Room=57}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 699

execute as @a[scores={Room=57}] run function luigis_mansion:room/normal/breaker_room/tick_per_player

function #luigis_mansion:room/normal/breaker_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=57},limit=1] run function luigis_mansion:room/normal/breaker_room/ghosts