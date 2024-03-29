execute unless score #safari_room Ticking matches 1 run function #luigis_mansion:room/hidden/safari_room/load
execute as @a[x=732,y=26,z=49,dx=14,dy=9,dz=25] unless entity @s[scores={Room=50}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=732,y=26,z=49,dx=14,dy=9,dz=25] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 50

execute as @e[scores={Room=50}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 745

execute as @a[scores={Room=50}] run function luigis_mansion:room/hidden/safari_room/tick_per_player

function #luigis_mansion:room/hidden/safari_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=50},limit=1] run function luigis_mansion:room/hidden/safari_room/ghosts