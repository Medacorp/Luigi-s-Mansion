execute unless score #hallway_9 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_9/load
execute as @a[x=679,y=19,z=3,dx=6,dy=7,dz=42] unless entity @s[scores={Room=35}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=679,y=19,z=3,dx=6,dy=7,dz=42] Room 35

execute as @a[scores={Room=35}] run function luigis_mansion:room/hidden/hallway_9/tick_per_player

scoreboard players set #temp Room 35
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function luigis_mansion:room/hidden/hallway_9/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room