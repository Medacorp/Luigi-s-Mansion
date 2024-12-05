execute unless score #hallway_22 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_22/load
execute as @e[tag=player,x=653,y=1,z=27,dx=33,dy=7,dz=12] unless entity @s[scores={Room=61}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=653,y=1,z=27,dx=33,dy=7,dz=12] Room 61

execute as @a[scores={Room=61}] run function luigis_mansion:room/hidden/hallway_22/tick_per_player

scoreboard players set #temp Room 61
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_22/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room