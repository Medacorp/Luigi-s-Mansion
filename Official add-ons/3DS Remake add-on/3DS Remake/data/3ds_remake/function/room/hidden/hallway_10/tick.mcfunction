execute unless score #hallway_10 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_10/load
execute as @e[tag=player,x=667,y=19,z=4,dx=11,dy=7,dz=8] unless entity @s[scores={Room=36}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=667,y=19,z=4,dx=11,dy=7,dz=8] Room 36

execute as @a[scores={Room=36}] run function 3ds_remake:room/hidden/hallway_10/tick_per_player

scoreboard players set #temp Room 36
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function 3ds_remake:room/hidden/hallway_10/ghosts
tag @e[tag=luigi,tag=same_room] remove same_room
tag @e[tag=luigi,tag=exact_same_room] remove exact_same_room