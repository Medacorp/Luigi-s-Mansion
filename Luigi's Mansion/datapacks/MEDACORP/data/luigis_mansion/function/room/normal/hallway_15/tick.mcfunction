execute unless score #hallway_15 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_15/load
execute as @e[tag=player,x=713,y=28,z=-42,dx=7,dy=7,dz=13] unless entity @s[scores={Room=41}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=713,y=28,z=-42,dx=7,dy=7,dz=13] Room 41

execute as @a[scores={Room=41}] run function luigis_mansion:room/normal/hallway_15/tick_per_player

scoreboard players set #temp Room 41
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_15/ghosts
tag @e[tag=luigi,tag=same_room] remove same_room
tag @e[tag=luigi,tag=exact_same_room] remove exact_same_room