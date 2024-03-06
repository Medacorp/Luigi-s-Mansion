execute unless score #hallway_15 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_15/load
execute as @a[gamemode=!spectator,x=713,y=26,z=-42,dx=7,dy=9,dz=13] unless entity @s[scores={Room=41}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=713,y=26,z=-42,dx=7,dy=9,dz=13] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 41
scoreboard players set #temp Room 41
tag @e[tag=ghost,scores={Room=41}] add no_hidden_move

execute as @a[scores={Room=41}] run function luigis_mansion:room/normal/hallway_15/tick_per_player

function #luigis_mansion:room/normal/hallway_15/interactions/room

scoreboard players set #temp Room 41
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_15/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=same_room] remove exact_same_room