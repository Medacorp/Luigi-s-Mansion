execute unless score #hallway_15 Ticking matches 1 run function #luigis_mansion:room/hidden/hallway_15/load
execute as @a[x=712,y=28,z=44,dx=7,dy=7,dz=13] unless entity @s[scores={Room=41}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=712,y=28,z=44,dx=7,dy=7,dz=13] Room 41

execute as @a[scores={Room=41}] run function luigis_mansion:room/hidden/hallway_15/tick_per_player

scoreboard players set #temp Room 41
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function luigis_mansion:room/hidden/hallway_15/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room