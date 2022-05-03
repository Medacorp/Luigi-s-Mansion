execute unless score #hallway_11 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_11/load
execute as @a[gamemode=!spectator,x=686,y=19,z=-23,dx=10,dy=8,dz=8] unless entity @s[scores={Room=37}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=686,y=19,z=-23,dx=10,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 37
scoreboard players set #temp Room 37
tag @e[tag=ghost,scores={Room=37}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=37}] run function luigis_mansion:room/normal/hallway_11/tick_per_player

function #luigis_mansion:room/normal/hallway_11/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=37},limit=1] run function luigis_mansion:room/normal/hallway_11/ghosts