execute unless score #hallway_16 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_16/load
execute as @a[x=741,y=28,z=-17,dx=23,dy=7,dz=8] unless entity @s[scores={Room=51}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @a[x=741,y=28,z=-17,dx=23,dy=7,dz=8] Room 51

execute as @a[scores={Room=51}] run function 3ds_remake:room/hidden/hallway_16/tick_per_player

scoreboard players set #temp Room 51
execute as @a[tag=!pause_dialog] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @a[tag=same_room,tag=!spectator,limit=1] run function 3ds_remake:room/hidden/hallway_16/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room