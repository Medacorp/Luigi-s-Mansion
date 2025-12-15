data modify storage luigis_mansion:data macro set value {offset:0.7f,height:0f,open:1b}
execute store result storage luigis_mansion:data macro.offset float 0.05 run scoreboard players remove @s FurnitureSizeLeft 6
execute if entity @s[tag=!left] store result storage luigis_mansion:data macro.offset float -0.05 run scoreboard players get @s FurnitureSizeLeft
execute store result storage luigis_mansion:data macro.height float 0.1 run scoreboard players get @s FurnitureSizeUp
scoreboard players add @s FurnitureSizeLeft 6
function luigis_mansion:entities/furniture/type/curtain/update_shadow with storage luigis_mansion:data macro
execute rotated ~ 0 run teleport @s[scores={FurnitureSizeLeft=17..},tag=left] ^-0.1 ^ ^
execute rotated ~ 0 run teleport @s[scores={FurnitureSizeLeft=16},tag=left] ^-0.05 ^ ^
execute rotated ~ 0 run teleport @s[scores={FurnitureSizeLeft=17..},tag=!left] ^0.1 ^ ^
execute rotated ~ 0 run teleport @s[scores={FurnitureSizeLeft=16},tag=!left] ^0.05 ^ ^
scoreboard players remove @s[scores={FurnitureSizeLeft=16..}] FurnitureSizeLeft 2
scoreboard players add @s[scores={FurnitureSizeLeft=14}] FurnitureSizeLeft 1
execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10
execute if score @s FurnitureSizeLeft <= @s FurnitureCurtainOpen run tag @s add open