execute unless score #mirror_room Ticking matches 1 run function #luigis_mansion:room/normal/mirror_room/load
execute as @a[gamemode=!spectator,x=734,y=10,z=-63,dx=14,dy=8,dz=21] unless entity @s[scores={Room=21}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=734,y=10,z=-63,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 21
scoreboard players set #temp Room 21

execute as @e[scores={Room=21},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 735

execute as @a[gamemode=!spectator,scores={Room=21}] run function luigis_mansion:room/normal/mirror_room/tick_per_player

function #luigis_mansion:room/normal/mirror_room/interactions/room

clone 736 13 -61 736 13 -61 734 13 -61
clone 736 13 -44 736 13 -44 734 13 -44

execute if block 736 13 -61 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] if block 736 13 -44 minecraft:brewing_stand[has_bottle_0=true,has_bottle_1=true,has_bottle_2=true] run function luigis_mansion:room/normal/mirror_room/remove_blockade

scoreboard players set #temp Room 21
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/mirror_room/ghosts
tag @a[tag=same_room] remove same_room