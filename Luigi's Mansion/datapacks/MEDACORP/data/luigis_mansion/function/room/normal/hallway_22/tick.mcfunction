execute unless score #hallway_22 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_22/load
execute as @a[x=653,y=1,z=-24,dx=33,dy=7,dz=12] unless entity @s[scores={Room=61}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=653,y=1,z=-24,dx=33,dy=7,dz=12] Room 61

execute as @a[scores={Room=61}] run function luigis_mansion:room/normal/hallway_22/tick_per_player

scoreboard players set #temp Room 61
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function luigis_mansion:room/normal/hallway_22/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room