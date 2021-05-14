execute unless score #bathroom_1 Ticking matches 1 run function #luigis_mansion:room/normal/bathroom_1/load
execute as @a[gamemode=!spectator,x=648,y=10,z=15,dx=12,dy=8,dz=14] unless entity @s[scores={Room=16}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=648,y=10,z=15,dx=12,dy=8,dz=14] run scoreboard players set @s Room 16

scoreboard players set @e[scores={Room=16},type=!minecraft:marker] MirrorX 649

execute as @a[gamemode=!spectator,scores={Room=16}] run function luigis_mansion:room/normal/bathroom_1/tick_per_player

function #luigis_mansion:room/normal/bathroom_1/interactions/room

clone 654 12 21 654 16 27 644 12 21

function luigis_mansion:room/normal/bathroom_1/ghosts

function luigis_mansion:room/normal/door/hallway_6_bathroom_1