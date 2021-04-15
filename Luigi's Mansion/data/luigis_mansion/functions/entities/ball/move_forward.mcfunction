execute if block ^ ^ ^0.6 #luigis_mansion:all_ignore if entity @s[tag=!chauncey] run teleport @s ^ ^ ^0.05
execute if block ^ ^ ^0.6 #luigis_mansion:all_ignore if entity @s[tag=spit] run teleport @s ^ ^ ^0.05
execute if block ^ ^ ^0.6 #luigis_mansion:all_ignore run teleport @s[tag=chauncey,tag=!spit,tag=!land] ^ ^-0.05 ^0.05
execute if block ^ ^ ^0.6 #luigis_mansion:all_ignore run teleport @s[tag=chauncey,tag=!spit,tag=land] ^ ^0.05 ^0.05
execute positioned as @s[tag=chauncey,tag=!spit] unless block ~ ~-0.1 ~ #luigis_mansion:all_ignore run tag @s add land
execute positioned as @s[tag=chauncey,tag=!spit] if block ~ ~-0.1 ~ #luigis_mansion:all_ignore if block ~ ~-1.1 ~ #luigis_mansion:all_ignore if block ~ ~-2.1 ~ #luigis_mansion:all_ignore if block ~ ~-3.1 ~ #luigis_mansion:all_ignore run tag @s remove land
scoreboard players remove #temp Move 1
execute positioned as @s if block ~ ~ ~ #luigis_mansion:all_ignore unless block ~ ~0.7 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.1 ~
execute positioned as @s[tag=!land] unless block ~ ~ ~ #luigis_mansion:all_ignore if block ~ ~0.1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~0.1 ~
execute positioned as @s unless block ~0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~-0.1 ~ ~
execute positioned as @s unless block ~-0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~0.1 ~ ~
execute positioned as @s unless block ~ ~ ~0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~-0.1
execute positioned as @s unless block ~ ~ ~-0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~0.1
execute rotated ~ 0 unless block ^ ^ ^0.8 #luigis_mansion:all_ignore run tag @s add collision
execute rotated ~ 0 unless block ^ ^0.6 ^0.8 #luigis_mansion:all_ignore run tag @s add collision
execute if score #temp Move matches 1.. unless block ^ ^ ^0.8 #luigis_mansion:all_ignore rotated ~ 0 if block ^ ^ ^0.8 #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/move_forward
execute if score #temp Move matches 1.. positioned as @s[tag=!collision] run function luigis_mansion:entities/ball/move_forward