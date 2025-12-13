scoreboard players add @s FurnitureSizeLeft 2
execute if score @s FurnitureSizeLeft > @s FurnitureCurtainSize run tag @s add max_size
execute rotated ~ 0 run teleport @s[tag=!max_size,tag=!right] ^0.1 ^ ^
execute rotated ~ 0 run teleport @s[tag=max_size,tag=!right] ^0.05 ^ ^
execute rotated ~ 0 run teleport @s[tag=!max_size,tag=right] ^-0.1 ^ ^
execute rotated ~ 0 run teleport @s[tag=max_size,tag=right] ^-0.05 ^ ^
scoreboard players add @s[tag=max_size] FurnitureSizeLeft 1
tag @s remove max_size
execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10
tag @s remove open