execute unless score #hallway_14 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_14/load
execute as @a[gamemode=!spectator,x=712,y=19,z=58,dx=8,dy=17,dz=12] unless entity @s[scores={Room=40}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=712,y=19,z=58,dx=8,dy=17,dz=12] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 40
tag @e[tag=ghost,scores={Room=40}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=40}] run function luigis_mansion:room/hidden/hallway_14/tick_per_player

function #luigis_mansion:room/hidden/hallway_14/interactions/room

function luigis_mansion:room/hidden/hallway_14/ghosts