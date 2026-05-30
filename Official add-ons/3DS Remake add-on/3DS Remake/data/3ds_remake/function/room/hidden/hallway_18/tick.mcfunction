execute unless score #hallway_18 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_18/load
execute as @e[tag=player,x=723,y=28,z=40,dx=16,dy=7,dz=8] unless entity @s[scores={Room=54}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=723,y=28,z=40,dx=16,dy=7,dz=8] Room 54

execute as @a[scores={Room=54}] run function 3ds_remake:room/hidden/hallway_18/tick_per_player

scoreboard players set #temp Room 54
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function 3ds_remake:room/hidden/hallway_18/ghosts
tag @e[tag=luigi,tag=same_room] remove same_room
tag @e[tag=luigi,tag=exact_same_room] remove exact_same_room