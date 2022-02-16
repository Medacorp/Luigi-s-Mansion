execute unless score #hidden_room Ticking matches 1 run function #luigis_mansion:room/normal/hidden_room/load
execute as @a[gamemode=!spectator,x=736,y=10,z=29,dx=14,dy=8,dz=21] unless entity @s[scores={Room=24}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=736,y=10,z=29,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 24
scoreboard players set #temp Room 24

execute as @e[scores={Room=24},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 749

execute as @a[gamemode=!spectator,scores={Room=24}] run function luigis_mansion:room/normal/hidden_room/tick_per_player

function #luigis_mansion:room/normal/hidden_room/interactions/room

clone 739 13 47 739 13 47 759 13 47
clone 739 13 32 739 13 32 759 13 32

execute if entity @a[gamemode=!spectator,scores={Room=24}] run function luigis_mansion:room/normal/hidden_room/ghosts
