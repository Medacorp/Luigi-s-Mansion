execute unless score #rec_room Ticking matches 1 run function #luigis_mansion:room/normal/rec_room/load
execute as @a[x=637,y=10,z=-62,dx=12,dy=7,dz=33] unless entity @s[scores={Room=32}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=637,y=10,z=-62,dx=12,dy=7,dz=33] Room 32
#todelete - old furniture
scoreboard players set #temp Room 32
#/todelete

execute as @e[scores={Room=32}] unless entity @s[type=!minecraft:armor_stand,type=!minecraft:item_frame] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorX 638

execute as @a[scores={Room=32}] run function luigis_mansion:room/normal/rec_room/tick_per_player

execute at @e[tag=swinging_harms,scores={Room=32,FurnitureVacuum=0}] align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:light_gray_stained_glass
execute as @e[tag=swinging_harms,scores={Room=32}] unless entity @s[scores={FurnitureVacuum=0}] at @s align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:air

#todelete - old furniture
function #luigis_mansion:room/normal/rec_room/interactions/room
#/todelete

execute if entity @a[tag=!pause_dialog,scores={Room=32},tag=!spectator,limit=1] run function luigis_mansion:room/normal/rec_room/ghosts