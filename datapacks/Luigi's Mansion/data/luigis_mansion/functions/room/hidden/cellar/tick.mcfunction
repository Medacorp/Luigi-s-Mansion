execute unless score #cellar Ticking matches 1 run function #luigis_mansion:room/hidden/cellar/load
execute as @a[gamemode=!spectator,x=734,y=1,z=57,dx=14,dy=8,dz=21] unless entity @s[scores={Room=58}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=734,y=1,z=57,dx=14,dy=8,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 58
scoreboard players set #temp Room 58

execute as @a[gamemode=!spectator,scores={Room=58}] run function luigis_mansion:room/hidden/cellar/tick_per_player

function #luigis_mansion:room/hidden/cellar/interactions/room

scoreboard players set #temp Room 58
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/cellar/ghosts
tag @a[tag=same_room] remove same_room