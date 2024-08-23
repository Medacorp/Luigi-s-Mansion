execute unless score #hallway_11 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_11/load
execute as @a[x=686,y=19,z=-23,dx=10,dy=7,dz=8] unless entity @s[scores={Room=37}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=686,y=19,z=-23,dx=10,dy=7,dz=8] Room 37

execute as @a[scores={Room=37}] run function 3ds_remake:room/hidden/hallway_11/tick_per_player

scoreboard players set #temp Room 37
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function 3ds_remake:room/hidden/hallway_11/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room