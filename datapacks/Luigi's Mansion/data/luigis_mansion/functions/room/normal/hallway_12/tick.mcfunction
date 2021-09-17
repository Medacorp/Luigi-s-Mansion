execute unless score #hallway_12 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_12/load
execute as @a[gamemode=!spectator,x=697,y=19,z=-23,dx=15,dy=8,dz=8] unless entity @s[scores={Room=38}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=697,y=19,z=-23,dx=15,dy=8,dz=8] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 38
tag @e[tag=ghost,scores={Room=38}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=38}] run function luigis_mansion:room/normal/hallway_12/tick_per_player

function #luigis_mansion:room/normal/hallway_12/interactions/room

function luigis_mansion:room/normal/hallway_12/ghosts

function luigis_mansion:room/normal/door/hallway_12_sealed_room