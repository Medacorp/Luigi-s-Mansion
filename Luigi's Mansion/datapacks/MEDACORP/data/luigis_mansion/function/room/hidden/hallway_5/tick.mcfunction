execute unless score #hallway_5 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_5/load
execute as @e[tag=player,x=679,y=10,z=3,dx=6,dy=7,dz=42] unless entity @s[scores={Room=13}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=679,y=10,z=3,dx=6,dy=7,dz=42] Room 13

execute as @a[scores={Room=13}] run function luigis_mansion:room/hidden/hallway_5/tick_per_player

scoreboard players set #temp Room 13
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:room/hidden/hallway_5/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room