execute unless score #rec_room Ticking matches 1 run function #luigis_mansion:room/hidden/rec_room/load
execute as @a[x=637,y=10,z=44,dx=12,dy=7,dz=33] unless entity @s[scores={Room=32}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=637,y=10,z=44,dx=12,dy=7,dz=33] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 32

execute as @e[scores={Room=32}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] run scoreboard players set @s MirrorX 638

execute as @a[scores={Room=32}] run function luigis_mansion:room/hidden/rec_room/tick_per_player

execute at @e[tag=swinging_harms,scores={Room=32,FurnitureVacuum=0}] align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:light_gray_stained_glass
execute as @e[tag=swinging_harms,scores={Room=32}] unless entity @s[scores={FurnitureVacuum=0}] at @s align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:air

function #luigis_mansion:room/hidden/rec_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=32},tag=!spectator,limit=1] run function luigis_mansion:room/hidden/rec_room/ghosts