execute unless score #hallway_12 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_12/load
execute as @e[tag=player,x=697,y=19,z=-23,dx=15,dy=7,dz=8] unless entity @s[scores={Room=38}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=697,y=19,z=-23,dx=15,dy=7,dz=8] Room 38

execute as @a[scores={Room=38}] run function 3ds_remake:room/hidden/hallway_12/tick_per_player

scoreboard players set #temp Room 38
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function 3ds_remake:room/hidden/hallway_12/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room