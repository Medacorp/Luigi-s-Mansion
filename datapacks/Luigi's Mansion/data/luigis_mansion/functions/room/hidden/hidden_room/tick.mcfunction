execute unless score #hidden_room Ticking matches 1 run function #luigis_mansion:room/hidden/hidden_room/load
execute as @a[gamemode=!spectator,x=736,y=10,z=-35,dx=14,dy=8,dz=21] unless entity @s[scores={Room=24}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=736,y=10,z=-35,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 24

execute as @e[scores={Room=24},type=!minecraft:marker] unless entity @s[gamemode=spectator] run scoreboard players set @s MirrorX 749

execute as @a[gamemode=!spectator,scores={Room=24}] run function luigis_mansion:room/hidden/hidden_room/tick_per_player

function #luigis_mansion:room/hidden/hidden_room/interactions/room

clone 739 13 -32 739 13 -32 759 13 -32
clone 739 13 -17 739 13 -17 759 13 -17

function luigis_mansion:room/hidden/hidden_room/ghosts
