execute unless score #conservatory Ticking matches 1 run function #luigis_mansion:room/hidden/conservatory/load
execute as @a[gamemode=!spectator,x=652,y=8,z=16,dx=12,dy=9,dz=28] unless entity @s[scores={Room=25}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[tag=!spectator,x=652,y=8,z=16,dx=12,dy=9,dz=28] unless entity @s[tag=ghost,tag=appear] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 25
scoreboard players set #temp Room 25

execute as @a[gamemode=!spectator,scores={Room=25}] run function luigis_mansion:room/hidden/conservatory/tick_per_player

function #luigis_mansion:room/hidden/conservatory/interactions/room

scoreboard players set #temp Room 25
execute as @a[gamemode=!spectator,tag=!pull_open_door,tag=!push_open_door] run function #luigis_mansion:get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,limit=1] run function luigis_mansion:room/hidden/conservatory/ghosts
tag @a[tag=same_room] remove same_room