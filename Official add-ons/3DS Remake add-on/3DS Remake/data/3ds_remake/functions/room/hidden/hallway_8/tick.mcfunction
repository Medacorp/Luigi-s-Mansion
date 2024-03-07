execute unless score #hallway_8 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_8/load
execute as @a[gamemode=!spectator,x=659,y=8,z=-62,dx=8,dy=18,dz=26] unless entity @s[scores={Room=33}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=659,y=8,z=-62,dx=8,dy=18,dz=26] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 33
tag @e[tag=ghost,scores={Room=33}] add no_hidden_move

execute as @a[scores={Room=33}] run function 3ds_remake:room/hidden/hallway_8/tick_per_player

function #3ds_remake:room/hidden/hallway_8/interactions/room

scoreboard players set #temp Room 33
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function 3ds_remake:room/hidden/hallway_8/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room