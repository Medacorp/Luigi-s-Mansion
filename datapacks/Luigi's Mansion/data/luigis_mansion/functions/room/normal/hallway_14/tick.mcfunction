execute unless score #hallway_14 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_14/load
execute as @a[gamemode=!spectator,x=712,y=19,z=-55,dx=8,dy=17,dz=12] unless entity @s[scores={Room=40}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=712,y=19,z=-55,dx=8,dy=17,dz=12] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 40
scoreboard players set #temp Room 40
tag @e[tag=ghost,scores={Room=40}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=40}] run function luigis_mansion:room/normal/hallway_14/tick_per_player

function #luigis_mansion:room/normal/hallway_14/interactions/room

execute if entity @a[gamemode=!spectator,scores={Room=40},limit=1] run function luigis_mansion:room/normal/hallway_14/ghosts