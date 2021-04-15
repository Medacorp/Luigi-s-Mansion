execute unless score #bathroom_1 Ticking matches 1 run function #luigis_mansion:room/normal/bathroom_1/load
execute as @a[x=648,y=11,z=15,dx=12,dy=6,dz=14] unless entity @s[scores={Room=12}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=648,y=11,z=15,dx=12,dy=6,dz=14] run scoreboard players set @s Room 12

scoreboard players set @e[scores={Room=12},type=!minecraft:area_effect_cloud] MirrorX 649

execute as @a[gamemode=!spectator,x=648,y=11,z=15,dx=12,dy=6,dz=14] run function luigis_mansion:room/normal/bathroom_1/tick_per_player

function #luigis_mansion:room/normal/bathroom_1/interactions/room

clone 654 12 21 654 16 27 644 12 21

function luigis_mansion:room/normal/bathroom_1/ghosts

function luigis_mansion:room/normal/door/main_hallway_bathroom_1