execute if entity @s[tag=left] as @e[distance=..4.999999,tag=!ball_floor] unless entity @s[tag=spectator] unless entity @s[type=minecraft:marker,tag=flashlight] unless entity @s[scores={GhostNr=-2147483648..}] run function luigis_mansion:entities/ball_floor/rotate_left
execute if entity @s[tag=!left] as @e[distance=..4.999999,tag=!ball_floor] unless entity @s[tag=spectator] unless entity @s[type=minecraft:marker,tag=flashlight] unless entity @s[scores={GhostNr=-2147483648..}] run function luigis_mansion:entities/ball_floor/rotate_right
teleport @s[tag=left] ~ ~ ~ ~-1.025 0
teleport @s[tag=!left] ~ ~ ~ ~1.025 0
execute if entity @s[tag=!started,scores={Sound=0}] run playsound luigis_mansion:furniture.ball_floor.start_spinning block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=started,scores={Sound=0}] run playsound luigis_mansion:furniture.ball_floor.spin block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 10
tag @s add started