execute unless score #tea_room Ticking matches 1 run function #luigis_mansion:room/hidden/tea_room/load
execute as @a[gamemode=!spectator,x=637,y=17,z=44,dx=12,dy=9,dz=33] unless entity @s[scores={Room=34}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=637,y=17,z=44,dx=12,dy=9,dz=33] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 34

execute as @a[scores={Room=34}] run function luigis_mansion:room/hidden/tea_room/tick_per_player

function #luigis_mansion:room/hidden/tea_room/interactions/room

execute if entity @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door,scores={Room=34},limit=1] run function luigis_mansion:room/hidden/tea_room/ghosts