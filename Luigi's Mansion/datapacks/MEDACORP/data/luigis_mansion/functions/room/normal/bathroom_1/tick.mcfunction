execute unless score #bathroom_1 Ticking matches 1 run function #luigis_mansion:room/normal/bathroom_1/load
execute as @a[gamemode=!spectator,x=648,y=8,z=15,dx=12,dy=9,dz=14] unless entity @s[scores={Room=16}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=648,y=8,z=15,dx=12,dy=9,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 16
scoreboard players set #temp Room 16

execute as @e[scores={Room=16},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 649

execute as @a[scores={Room=16}] run function luigis_mansion:room/normal/bathroom_1/tick_per_player

function #luigis_mansion:room/normal/bathroom_1/interactions/room

clone 654 12 21 654 16 27 644 12 21

scoreboard players set #temp Room 16
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=exact_same_room,limit=1] run function luigis_mansion:room/normal/bathroom_1/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room