execute unless score #bathroom_2 Ticking matches 1 run function #luigis_mansion:room/hidden/bathroom_2/load
execute as @a[gamemode=!spectator,x=648,y=19,z=-14,dx=12,dy=8,dz=14] unless entity @s[scores={Room=43}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=648,y=19,z=-14,dx=12,dy=8,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 43

execute as @e[scores={Room=43},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 649

execute as @a[gamemode=!spectator,scores={Room=43}] run function luigis_mansion:room/hidden/bathroom_2/tick_per_player

function #luigis_mansion:room/hidden/bathroom_2/interactions/room

clone 654 21 -7 654 25 -12 644 21 -12

function luigis_mansion:room/hidden/bathroom_2/ghosts

function luigis_mansion:room/hidden/door/hallway_10_bathroom_2