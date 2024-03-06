execute unless score #hallway_17 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_17/load
execute as @a[gamemode=!spectator,x=724,y=26,z=24,dx=16,dy=9,dz=8] unless entity @s[scores={Room=52}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=724,y=26,z=24,dx=16,dy=9,dz=8] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 52
scoreboard players set #temp Room 52
tag @e[tag=ghost,scores={Room=52}] add no_hidden_move

execute as @a[scores={Room=52}] run function luigis_mansion:room/hidden/hallway_17/tick_per_player

function #luigis_mansion:room/hidden/hallway_17/interactions/room

scoreboard players set #temp Room 52
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_17/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room