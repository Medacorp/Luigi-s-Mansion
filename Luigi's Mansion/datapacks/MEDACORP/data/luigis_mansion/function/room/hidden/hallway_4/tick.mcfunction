execute unless score #hallway_4 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_4/load
execute as @a[x=686,y=10,z=30,dx=26,dy=7,dz=8] unless entity @s[scores={Room=12}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=686,y=10,z=30,dx=26,dy=7,dz=8] Room 12

execute as @a[scores={Room=12}] run function luigis_mansion:room/hidden/hallway_4/tick_per_player

scoreboard players set #temp Room 12
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function luigis_mansion:room/hidden/hallway_4/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room