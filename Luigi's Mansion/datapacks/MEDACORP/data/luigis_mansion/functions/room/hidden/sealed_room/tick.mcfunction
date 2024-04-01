execute unless score #sealed_room Ticking matches 1 run function #luigis_mansion:room/hidden/sealed_room/load
execute as @a[x=693,y=19,z=70,dx=17,dy=7,dz=33] unless entity @s[scores={Room=66}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=693,y=19,z=70,dx=17,dy=7,dz=33] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 66

execute as @e[scores={Room=66}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 694

execute as @a[scores={Room=66}] run function luigis_mansion:room/hidden/sealed_room/tick_per_player

function #luigis_mansion:room/hidden/sealed_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=66},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/sealed_room/ghosts