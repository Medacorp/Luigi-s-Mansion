execute unless score #bathroom_1 Ticking matches 1 run function #3ds_remake:room/hidden/bathroom_1/load
execute as @a[gamemode=!spectator,x=648,y=8,z=15,dx=12,dy=9,dz=14] unless entity @s[scores={Room=16}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=648,y=8,z=15,dx=12,dy=9,dz=14] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 16

execute as @e[scores={Room=16},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 649

execute as @a[scores={Room=16}] run function 3ds_remake:room/hidden/bathroom_1/tick_per_player

function #3ds_remake:room/hidden/bathroom_1/interactions/room

clone 654 12 21 654 16 27 644 12 21

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=16},limit=1] run function 3ds_remake:room/hidden/bathroom_1/ghosts