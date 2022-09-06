execute unless score #laundry_room Ticking matches 1 run function #luigis_mansion:room/hidden/laundry_room/load
execute as @a[gamemode=!spectator,x=712,y=8,z=-62,dx=8,dy=10,dz=20] unless entity @s[scores={Room=22}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=712,y=8,z=-62,dx=8,dy=10,dz=20] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 22
scoreboard players set #temp Room 22

execute as @a[gamemode=!spectator,scores={Room=22}] run function luigis_mansion:room/hidden/laundry_room/tick_per_player

function #luigis_mansion:room/hidden/laundry_room/interactions/room

scoreboard players set #temp Room 22
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/laundry_room/ghosts
tag @a[tag=same_room] remove same_room