execute unless score #hallway_4 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_4/load
execute as @a[gamemode=!spectator,x=686,y=10,z=30,dx=26,dy=8,dz=8] unless entity @s[scores={Room=12}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[type=!minecraft:item_frame,x=686,y=10,z=30,dx=26,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 12
tag @e[tag=ghost,scores={Room=12}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=12}] run function luigis_mansion:room/hidden/hallway_4/tick_per_player

function #luigis_mansion:room/hidden/hallway_4/interactions/room

function luigis_mansion:room/hidden/hallway_4/ghosts

function luigis_mansion:room/hidden/door/hallway_4_ball_room
function luigis_mansion:room/hidden/door/hallway_4_dining_room