execute if block ^ ^ ^0.1 #luigis_mansion:all_ignore if entity @s[tag=!chauncey] run teleport @s ^ ^ ^0.05
execute if block ^ ^ ^0.1 #luigis_mansion:all_ignore if entity @s[tag=spit] run teleport @s ^ ^ ^0.05
execute if block ^ ^ ^0.1 #luigis_mansion:all_ignore run teleport @s[tag=chauncey,tag=!spit,tag=!land] ^ ^-0.05 ^0.05
execute if block ^ ^ ^0.1 #luigis_mansion:all_ignore run teleport @s[tag=chauncey,tag=!spit,tag=land] ^ ^0.05 ^0.05
execute positioned as @s[tag=chauncey,tag=!spit] unless block ~ ~-0.1 ~ #luigis_mansion:all_ignore run playsound luigis_mansion:entity.ball.bounce neutral @a[tag=same_room] ~ ~ ~ 1
execute positioned as @s[tag=chauncey,tag=!spit] unless block ~ ~-0.1 ~ #luigis_mansion:all_ignore run tag @s add land
execute positioned as @s[tag=chauncey,tag=!spit] if block ~ ~-0.1 ~ #luigis_mansion:all_ignore if block ~ ~-1.1 ~ #luigis_mansion:all_ignore if block ~ ~-2.1 ~ #luigis_mansion:all_ignore if block ~ ~-3.1 ~ #luigis_mansion:all_ignore run tag @s remove land
scoreboard players remove #temp Move 1
execute positioned as @s[x_rotation=-90..0] unless block ~ ~0.6 ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/py
execute positioned as @s[x_rotation=0..90,tag=!land] unless block ~ ~-0.1 ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/ny
execute positioned as @s[y_rotation=-180..0] unless block ~0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/px
execute positioned as @s[y_rotation=0..180] unless block ~-0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/nx
execute positioned as @s[y_rotation=-90..90] unless block ~ ~ ~0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/pz
execute positioned as @s[y_rotation=90..-90] unless block ~ ~ ~-0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/nz
execute if score #temp Move matches 1.. at @s[tag=!collision] run function luigis_mansion:entities/ball/move_forward