execute unless score #projection_room Ticking matches 1 run function #luigis_mansion:room/normal/projection_room/load
execute as @a[x=673,y=8,z=30,dx=15,dy=9,dz=16] unless entity @s[scores={Room=48}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=673,y=8,z=30,dx=15,dy=9,dz=16] unless entity @s[tag=ghost,tag=vanish] run scoreboard players set @s Room 48

execute as @a[scores={Room=48}] run function luigis_mansion:room/normal/projection_room/tick_per_player

function #luigis_mansion:room/normal/projection_room/interactions/room

execute if entity @a[tag=!pause_dialog,scores={Room=48},limit=1] run function luigis_mansion:room/normal/projection_room/ghosts