execute unless score #armory Ticking matches 1 run function #luigis_mansion:room/normal/armory/load
execute as @a[gamemode=!spectator,x=744,y=28,z=54,dx=22,dy=8,dz=25] unless entity @s[scores={Room=64}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=744,y=28,z=54,dx=22,dy=8,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 64
scoreboard players set #temp Room 64

execute as @e[scores={Room=64},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 745

execute as @a[gamemode=!spectator,scores={Room=64}] run function luigis_mansion:room/normal/armory/tick_per_player

function #luigis_mansion:room/normal/armory/interactions/room

scoreboard players set #temp Room 64
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/armory/ghosts
tag @a[tag=same_room] remove same_room