execute if block ^ ^ ^0.1 #luigis_mansion:all_ignore run teleport @s[tag=!spit,tag=!land] ^ ^-0.01 ^0.01
execute if block ^ ^ ^0.1 #luigis_mansion:all_ignore run teleport @s[tag=!spit,tag=land] ^ ^ ^0.01
execute if block ^ ^ ^0.1 #luigis_mansion:all_ignore if entity @s[tag=spit] run teleport @s ^ ^ ^0.01
execute positioned as @s[tag=!big,tag=!spike_ball] unless block ~ ~-0.4 ~ #luigis_mansion:all_ignore run playsound luigis_mansion:entity.ball.bounce neutral @a[tag=same_room] ~ ~ ~ 1
execute positioned as @s[tag=!big] unless block ~ ~-0.4 ~ #luigis_mansion:all_ignore run tag @s add land
execute positioned as @s[tag=!big] if block ~ ~-0.4 ~ #luigis_mansion:all_ignore run tag @s remove land
execute positioned as @s[tag=big,tag=!spike_ball] unless block ~ ~-1 ~ #luigis_mansion:all_ignore run playsound luigis_mansion:entity.ball.bounce neutral @a[tag=same_room] ~ ~ ~ 1
execute positioned as @s[tag=big] unless block ~ ~-1 ~ #luigis_mansion:all_ignore run tag @s add land
execute positioned as @s[tag=big] if block ~ ~-1 ~ #luigis_mansion:all_ignore run tag @s remove land
scoreboard players remove #temp Move 1
execute positioned as @s[tag=!big,x_rotation=-90..0] unless block ~ ~0.4 ~ #luigis_mansion:all_ignore if block ~ ~0.3 ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/py
execute positioned as @s[tag=!big,x_rotation=0..90] unless entity @s[tag=!spit,tag=land] unless block ~ ~-0.4 ~ #luigis_mansion:all_ignore if block ~ ~-0.3 ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/ny
execute positioned as @s[tag=!big,y_rotation=-180..0] unless block ~0.4 ~ ~ #luigis_mansion:all_ignore if block ~0.3 ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/px
execute positioned as @s[tag=!big,y_rotation=0..180] unless block ~-0.4 ~ ~ #luigis_mansion:all_ignore if block ~-0.3 ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/nx
execute positioned as @s[tag=!big,y_rotation=-90..90] unless block ~ ~ ~0.4 #luigis_mansion:all_ignore if block ~ ~ ~0.3 #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/pz
execute positioned as @s[tag=!big,y_rotation=90..-90] unless block ~ ~ ~-0.4 #luigis_mansion:all_ignore if block ~ ~ ~-0.3 #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/nz
execute positioned as @s[tag=big,x_rotation=-90..0] unless block ~ ~1 ~ #luigis_mansion:all_ignore if block ~ ~0.9 ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/py
execute positioned as @s[tag=big,x_rotation=0..90] unless entity @s[tag=!spit,tag=land] unless block ~ ~-1 ~ #luigis_mansion:all_ignore if block ~ ~-0.9 ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/ny
execute positioned as @s[tag=big,y_rotation=-180..0] unless block ~1 ~ ~ #luigis_mansion:all_ignore if block ~0.9 ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/px
execute positioned as @s[tag=big,y_rotation=0..180] unless block ~-1 ~ ~ #luigis_mansion:all_ignore if block ~-0.9 ~ ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/nx
execute positioned as @s[tag=big,y_rotation=-90..90] unless block ~ ~ ~1 #luigis_mansion:all_ignore if block ~ ~ ~0.9 #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/pz
execute positioned as @s[tag=big,y_rotation=90..-90] unless block ~ ~ ~-1 #luigis_mansion:all_ignore if block ~ ~ ~-0.9 #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/bounce/nz
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run scoreboard players set @s Move 0
execute rotated ~ 0 unless block ^ ^0.6 ^0.6 #luigis_mansion:all_ignore run scoreboard players set @s Move 0
execute if score #temp Move matches 1.. unless block ^ ^ ^0.6 #luigis_mansion:all_ignore rotated ~ 0 if block ^ ^ ^0.6 #luigis_mansion:all_ignore run function luigis_mansion:entities/ball/move
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:entities/ball/move