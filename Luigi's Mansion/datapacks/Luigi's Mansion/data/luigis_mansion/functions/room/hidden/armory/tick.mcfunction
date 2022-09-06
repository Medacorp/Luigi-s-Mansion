execute unless score #armory Ticking matches 1 run function #luigis_mansion:room/hidden/armory/load
execute as @a[gamemode=!spectator,x=744,y=26,z=-64,dx=22,dy=10,dz=25] unless entity @s[scores={Room=64}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=744,y=26,z=-64,dx=22,dy=10,dz=25] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 64
scoreboard players set #temp Room 64

execute as @e[scores={Room=64},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 745

execute as @a[gamemode=!spectator,scores={Room=64}] run function luigis_mansion:room/hidden/armory/tick_per_player

function #luigis_mansion:room/hidden/armory/interactions/room

scoreboard players set #temp Room 64
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/armory/ghosts
tag @a[tag=same_room] remove same_room