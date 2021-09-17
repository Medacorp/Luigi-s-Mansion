execute unless score #hallway_15 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_15/load
execute as @a[gamemode=!spectator,x=713,y=28,z=-42,dx=7,dy=8,dz=13] unless entity @s[scores={Room=41}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=713,y=28,z=-42,dx=7,dy=8,dz=13] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 41
tag @e[tag=ghost,scores={Room=41}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=41}] run function luigis_mansion:room/normal/hallway_15/tick_per_player

function #luigis_mansion:room/normal/hallway_15/interactions/room

function luigis_mansion:room/normal/hallway_15/ghosts

function luigis_mansion:room/normal/door/hallway_15_safari_room