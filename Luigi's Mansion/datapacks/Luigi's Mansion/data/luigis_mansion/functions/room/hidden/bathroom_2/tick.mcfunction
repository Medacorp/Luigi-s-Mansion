execute unless score #bathroom_2 Ticking matches 1 run function #luigis_mansion:room/hidden/bathroom_2/load
execute as @a[gamemode=!spectator,x=648,y=17,z=-14,dx=12,dy=10,dz=14] unless entity @s[scores={Room=43}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=648,y=17,z=-14,dx=12,dy=10,dz=14] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 43
scoreboard players set #temp Room 43

execute as @e[scores={Room=43},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 649

execute as @a[gamemode=!spectator,scores={Room=43}] run function luigis_mansion:room/hidden/bathroom_2/tick_per_player

function #luigis_mansion:room/hidden/bathroom_2/interactions/room

clone 654 21 -7 654 25 -12 644 21 -12

scoreboard players set #temp Room 43
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/bathroom_2/ghosts
tag @a[tag=same_room] remove same_room