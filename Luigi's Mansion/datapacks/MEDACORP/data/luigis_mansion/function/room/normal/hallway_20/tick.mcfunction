execute unless score #hallway_20 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_20/load
execute as @e[tag=player,x=713,y=1,z=-22,dx=22,dy=7,dz=8] unless entity @s[scores={Room=59}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=713,y=1,z=-22,dx=22,dy=7,dz=8] Room 59

execute as @a[scores={Room=59}] run function luigis_mansion:room/normal/hallway_20/tick_per_player

scoreboard players set #temp Room 59
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_20/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room