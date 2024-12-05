execute unless score #hallway_13 Ticking matches 1 run function #3ds_remake:room/hidden/hallway_13/load
execute as @e[tag=player,x=713,y=19,z=-42,dx=7,dy=7,dz=27] unless entity @s[scores={Room=39}] run scoreboard players operation @s LastRoom = @s Room
scoreboard players set @e[tag=player,x=713,y=19,z=-42,dx=7,dy=7,dz=27] Room 39

execute as @a[scores={Room=39}] run function 3ds_remake:room/hidden/hallway_13/tick_per_player

scoreboard players set #temp Room 39
execute as @e[tag=luigi,tag=!door_animation] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute if entity @e[tag=luigi,tag=same_room,limit=1] run function 3ds_remake:room/hidden/hallway_13/ghosts
tag @a[tag=same_room] remove same_room
tag @a[tag=exact_same_room] remove exact_same_room