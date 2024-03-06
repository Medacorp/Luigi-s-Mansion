execute unless score #hallway_4 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_4/load
execute as @a[gamemode=!spectator,x=686,y=8,z=-23,dx=26,dy=9,dz=8] unless entity @s[scores={Room=12}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=686,y=8,z=-23,dx=26,dy=9,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 12
scoreboard players set #temp Room 12
tag @e[tag=ghost,scores={Room=12}] add no_hidden_move

execute as @a[scores={Room=12}] run function 3ds_remake:room/hidden/hallway_4/tick_per_player

function #3ds_remake:room/hidden/hallway_4/interactions/room

scoreboard players set #temp Room 12
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function 3ds_remake:room/hidden/hallway_4/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room