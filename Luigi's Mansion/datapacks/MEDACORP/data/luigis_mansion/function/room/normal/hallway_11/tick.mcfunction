execute unless score #hallway_11 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_11/load
execute as @e[tag=player,x=686,y=19,z=-23,dx=10,dy=7,dz=8] unless entity @s[scores={Room=37}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=686,y=19,z=-23,dx=10,dy=7,dz=8] Room 37

execute as @a[scores={Room=37}] run function luigis_mansion:room/normal/hallway_11/tick_per_player

scoreboard players set #temp Room 37
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_11/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room