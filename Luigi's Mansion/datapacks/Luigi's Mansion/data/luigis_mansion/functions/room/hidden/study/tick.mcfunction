execute unless score #study Ticking matches 1 run function #luigis_mansion:room/hidden/study/load
execute as @a[gamemode=!spectator,x=700,y=17,z=-48,dx=17,dy=9,dz=21] unless entity @s[scores={Room=8}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=700,y=17,z=-48,dx=17,dy=9,dz=21] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 8
scoreboard players set #temp Room 8

execute as @a[gamemode=!spectator,scores={Room=8}] run function luigis_mansion:room/hidden/study/tick_per_player

function #luigis_mansion:room/hidden/study/interactions/room

scoreboard players set #temp Room 8
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/study/ghosts
tag @a[tag=same_room] remove same_room