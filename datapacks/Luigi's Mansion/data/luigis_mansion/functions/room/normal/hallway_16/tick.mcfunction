execute unless score #hallway_16 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_16/load
execute as @a[gamemode=!spectator,x=741,y=28,z=-17,dx=23,dy=8,dz=8] unless entity @s[scores={Room=51}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=741,y=28,z=-17,dx=23,dy=8,dz=8] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 51
tag @e[tag=ghost,scores={Room=51}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=51}] run function luigis_mansion:room/normal/hallway_16/tick_per_player

function #luigis_mansion:room/normal/hallway_16/interactions/room

function luigis_mansion:room/normal/hallway_16/ghosts

function luigis_mansion:room/normal/door/safari_room_hallway_16