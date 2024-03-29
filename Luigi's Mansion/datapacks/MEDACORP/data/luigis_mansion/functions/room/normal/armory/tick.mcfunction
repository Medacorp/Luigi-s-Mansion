execute unless score #armory Ticking matches 1 run function #luigis_mansion:room/normal/armory/load
execute as @a[x=744,y=26,z=54,dx=22,dy=9,dz=25] unless entity @s[scores={Room=64}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=744,y=26,z=54,dx=22,dy=9,dz=25] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 64

execute as @e[scores={Room=64}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 745

execute as @a[scores={Room=64}] run function luigis_mansion:room/normal/armory/tick_per_player

function #luigis_mansion:room/normal/armory/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=64},limit=1] run function luigis_mansion:room/normal/armory/ghosts