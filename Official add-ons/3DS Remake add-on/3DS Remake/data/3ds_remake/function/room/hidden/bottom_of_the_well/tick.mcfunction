execute unless score #bottom_of_the_well Ticking matches 1 run function #3ds_remake:room/hidden/bottom_of_the_well/load
execute as @e[tag=player,x=645,y=92,z=-9,dx=6,dy=7,dz=10] unless entity @s[x=634,y=92,z=-27,dx=20,dy=7,dz=18] unless entity @s[scores={Room=31}] run scoreboard players operation @s LastRoom = @s Room
execute as @e[x=645,y=92,z=-9,dx=6,dy=7,dz=10] unless entity @s[x=634,y=92,z=-27,dx=20,dy=7,dz=18] run scoreboard players set @s Room 31

execute as @e[scores={Room=31},tag=!model_piece,tag=!no_reflection,tag=!reflection,type=#luigis_mansion:reflected] if score #global_mirror_reflections Selected matches 1 run scoreboard players set @s MirrorZ -26

execute as @a[scores={Room=31}] run function 3ds_remake:room/hidden/bottom_of_the_well/tick_per_player

execute if entity @e[tag=luigi,tag=!door_animation,scores={Room=31},limit=1] run function 3ds_remake:room/hidden/bottom_of_the_well/ghosts