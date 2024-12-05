execute unless score #hallway_21 Ticking matches 1 run function #luigis_mansion:room/normal/hallway_21/load
execute as @e[tag=player,x=699,y=1,z=-22,dx=13,dy=7,dz=8] unless entity @s[scores={Room=60}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=699,y=1,z=-22,dx=13,dy=7,dz=8] Room 60

execute as @a[scores={Room=60}] run function luigis_mansion:room/normal/hallway_21/tick_per_player

scoreboard players set #temp Room 60
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function luigis_mansion:room/normal/hallway_21/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room