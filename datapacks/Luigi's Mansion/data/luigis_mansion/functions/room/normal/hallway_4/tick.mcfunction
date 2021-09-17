execute unless score #hallway_4 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_4/load
execute as @a[gamemode=!spectator,x=686,y=10,z=-23,dx=26,dy=8,dz=8] unless entity @s[scores={Room=12}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=686,y=10,z=-23,dx=26,dy=8,dz=8] unless entity @s[type=!minecraft:player,tag=!model_piece,scores={Room=-2147483648..}] run scoreboard players set @s Room 12
tag @e[tag=ghost,scores={Room=12}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=12}] run function luigis_mansion:room/normal/hallway_4/tick_per_player

function #luigis_mansion:room/normal/hallway_4/interactions/room

function luigis_mansion:room/normal/hallway_4/ghosts

function luigis_mansion:room/normal/door/hallway_4_ball_room
function luigis_mansion:room/normal/door/hallway_4_dining_room