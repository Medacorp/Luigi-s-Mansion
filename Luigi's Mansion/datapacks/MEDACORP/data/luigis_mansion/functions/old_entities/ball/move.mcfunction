execute if block ^ ^ ^0.6 #luigis_mansion:all_ignore run teleport @s[tag=!spit,tag=!land] ^ ^-0.01 ^0.01
execute if block ^ ^ ^0.6 #luigis_mansion:all_ignore run teleport @s[tag=!spit,tag=land] ^ ^ ^0.01
execute positioned as @s[tag=!spit,tag=!spike_ball] unless block ~ ~-0.1 ~ #luigis_mansion:all_ignore run playsound luigis_mansion:entity.ball.bounce neutral @a[tag=same_room] ~ ~ ~ 1
execute positioned as @s[tag=!spit] unless block ~ ~-0.1 ~ #luigis_mansion:all_ignore run tag @s add land
execute positioned as @s[tag=!spit] if block ~ ~-0.1 ~ #luigis_mansion:all_ignore run tag @s remove land
scoreboard players remove #temp Move 1
execute positioned as @s if block ~ ~ ~ #luigis_mansion:all_ignore unless block ~ ~0.6 ~ #luigis_mansion:all_ignore run teleport @s ~ ~-0.1 ~
execute positioned as @s[tag=!spike_ball] unless block ~ ~ ~ #luigis_mansion:all_ignore if block ~ ~0.1 ~ #luigis_mansion:all_ignore run playsound luigis_mansion:entity.ball.bounce neutral @a[tag=same_room] ~ ~ ~ 1
execute positioned as @s unless block ~ ~ ~ #luigis_mansion:all_ignore if block ~ ~0.1 ~ #luigis_mansion:all_ignore run teleport @s ~ ~0.1 ~
execute positioned as @s unless block ~0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~-0.1 ~ ~
execute positioned as @s unless block ~-0.3 ~ ~ #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~0.1 ~ ~
execute positioned as @s unless block ~ ~ ~0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~-0.1
execute positioned as @s unless block ~ ~ ~-0.3 #luigis_mansion:all_ignore if block ~ ~ ~ #luigis_mansion:all_ignore run teleport @s ~ ~ ~0.1
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:all_ignore run scoreboard players set @s Move 0
execute rotated ~ 0 unless block ^ ^0.6 ^0.6 #luigis_mansion:all_ignore run scoreboard players set @s Move 0
execute if score #temp Move matches 1.. unless block ^ ^ ^0.6 #luigis_mansion:all_ignore rotated ~ 0 if block ^ ^ ^0.6 #luigis_mansion:all_ignore run function luigis_mansion:old_entities/ball/move
execute if score #temp Move matches 1.. positioned as @s run function luigis_mansion:old_entities/ball/move