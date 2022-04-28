execute unless score #hallway_4 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_4/load
execute as @a[gamemode=!spectator,x=686,y=10,z=-23,dx=26,dy=8,dz=8] unless entity @s[scores={Room=12}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=686,y=10,z=-23,dx=26,dy=8,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 12
scoreboard players set #temp Room 12
tag @e[tag=ghost,scores={Room=12}] add no_hidden_move

execute as @a[gamemode=!spectator,scores={Room=12}] run function luigis_mansion:room/normal/hallway_4/tick_per_player

function #luigis_mansion:room/normal/hallway_4/interactions/room

scoreboard players set #temp Room 12
execute as @a[gamemode=!spectator] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_4/ghosts
tag @a[tag=same_room] remove same_room

function luigis_mansion:room/normal/door/hallway_4_ball_room
function luigis_mansion:room/normal/door/hallway_4_dining_room