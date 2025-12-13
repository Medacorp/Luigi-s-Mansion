execute rotated ~ 0 run teleport @s[scores={FurnitureSizeLeft=17..},tag=!right] ^0.1 ^ ^
execute rotated ~ 0 run teleport @s[scores={FurnitureSizeLeft=16},tag=!right] ^0.05 ^ ^
execute rotated ~ 0 run teleport @s[scores={FurnitureSizeLeft=17..},tag=right] ^-0.1 ^ ^
execute rotated ~ 0 run teleport @s[scores={FurnitureSizeLeft=16},tag=right] ^-0.05 ^ ^
scoreboard players remove @s[scores={FurnitureSizeLeft=16..}] FurnitureSizeLeft 2
scoreboard players add @s[scores={FurnitureSizeLeft=14}] FurnitureSizeLeft 1
execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10
execute if score @s FurnitureSizeLeft <= @s FurnitureCurtainOpen run tag @s add open