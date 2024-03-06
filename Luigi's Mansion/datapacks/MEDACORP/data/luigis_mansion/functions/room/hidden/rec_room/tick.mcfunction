execute unless score #rec_room Ticking matches 1 run function #luigis_mansion:room/hidden/rec_room/load
execute as @a[gamemode=!spectator,x=637,y=8,z=44,dx=12,dy=9,dz=33] unless entity @s[scores={Room=32}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=637,y=8,z=44,dx=12,dy=9,dz=33] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 32
scoreboard players set #temp Room 32

execute as @e[scores={Room=32},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 638

execute as @a[scores={Room=32}] run function luigis_mansion:room/hidden/rec_room/tick_per_player

execute at @e[tag=swinging_harms,scores={Room=32,FurnitureVacuum=0}] align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:light_gray_stained_glass
execute as @e[tag=swinging_harms,scores={Room=32}] unless entity @s[scores={FurnitureVacuum=0}] at @s align y run fill ~ ~-4 ~ ~ ~-2 ~ minecraft:air

function #luigis_mansion:room/hidden/rec_room/interactions/room

scoreboard players set #temp Room 32
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function luigis_mansion:room/hidden/rec_room/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room