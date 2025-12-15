data modify storage luigis_mansion:data macro set value {offset:0.7f,height:0f,open:0b}
execute store result storage luigis_mansion:data macro.offset float 0.05 run scoreboard players remove @s FurnitureSizeLeft 17
execute if entity @s[tag=!left] store result storage luigis_mansion:data macro.offset float -0.05 run scoreboard players get @s FurnitureSizeLeft
execute store result storage luigis_mansion:data macro.height float 0.1 run scoreboard players get @s FurnitureSizeUp
scoreboard players add @s FurnitureSizeLeft 17
function luigis_mansion:entities/furniture/type/curtain/update_shadow with storage luigis_mansion:data macro
scoreboard players add @s FurnitureSizeLeft 2
execute if score @s FurnitureSizeLeft > @s FurnitureCurtainSize run tag @s add max_size
execute rotated ~ 0 run teleport @s[tag=!max_size,tag=left] ^0.1 ^ ^
execute rotated ~ 0 run teleport @s[tag=max_size,tag=left] ^0.05 ^ ^
execute rotated ~ 0 run teleport @s[tag=!max_size,tag=!left] ^-0.1 ^ ^
execute rotated ~ 0 run teleport @s[tag=max_size,tag=!left] ^-0.05 ^ ^
scoreboard players remove @s[tag=max_size] FurnitureSizeLeft 1
tag @s remove max_size
execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10
tag @s remove open