execute unless score #safari_room Ticking matches 1 run function #luigis_mansion:room/hidden/safari_room/load
execute as @a[gamemode=!spectator,x=732,y=28,z=49,dx=14,dy=8,dz=25] unless entity @s[scores={Room=50}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=732,y=28,z=49,dx=14,dy=8,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 50
scoreboard players set #temp Room 50

execute as @e[scores={Room=50},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 745

execute as @a[gamemode=!spectator,scores={Room=50}] run function luigis_mansion:room/hidden/safari_room/tick_per_player

function #luigis_mansion:room/hidden/safari_room/interactions/room

scoreboard players set #temp Room 50
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/safari_room/ghosts
tag @a[tag=same_room] remove same_room