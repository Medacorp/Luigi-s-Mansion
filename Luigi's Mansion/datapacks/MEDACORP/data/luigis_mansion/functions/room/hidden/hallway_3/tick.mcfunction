execute unless score #hallway_3 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_3/load
execute as @a[gamemode=!spectator,x=713,y=8,z=-10,dx=7,dy=9,dz=60] unless entity @s[scores={Room=11}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=713,y=8,z=-10,dx=7,dy=9,dz=60] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 11
scoreboard players set #temp Room 11
tag @e[tag=ghost,scores={Room=11}] add no_hidden_move

execute as @a[scores={Room=11}] run function luigis_mansion:room/hidden/hallway_3/tick_per_player

function #luigis_mansion:room/hidden/hallway_3/interactions/room

scoreboard players set #temp Room 11
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_3/ghosts
tag @a[tag=same_room] remove same_room