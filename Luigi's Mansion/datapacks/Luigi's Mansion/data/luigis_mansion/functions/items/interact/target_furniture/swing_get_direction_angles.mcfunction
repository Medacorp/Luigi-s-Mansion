execute store result entity @s Pos[0] double 0.1 run scoreboard players get #temp FurnitureSizeL
execute store result entity @s Pos[1] double 0.1 run scoreboard players get #temp FurnitureSizeU
data modify entity @s Pos[2] set value 0.0d
execute positioned as @s facing 0.0 0.0 0.0 run teleport @s ~ ~ ~ ~ ~
execute store result score #temp FurnitureZTarget run data get entity @s Rotation[1] -10
scoreboard players remove #temp FurnitureZTarget 900
execute unless entity @s[y_rotation=-96..-84] run scoreboard players operation #temp FurnitureZTarget *= #-1 Constants
execute if score #temp FurnitureZTarget matches ..-900 run scoreboard players set #temp FurnitureZTarget -900
execute if score #temp FurnitureZTarget matches 900.. run scoreboard players set #temp FurnitureZTarget 900
execute store result entity @s Pos[2] double 0.1 run scoreboard players get #temp FurnitureSizeF
execute store result entity @s Pos[1] double 0.1 run scoreboard players get #temp FurnitureSizeU
data modify entity @s Pos[0] set value 0.0d
execute positioned as @s facing 0.0 0.0 0.0 run teleport @s ~ ~ ~ ~ ~
execute store result score #temp FurnitureXTarget run data get entity @s Rotation[1] -10
scoreboard players remove #temp FurnitureXTarget 900
execute unless entity @s[y_rotation=-6..6] run scoreboard players operation #temp FurnitureXTarget *= #-1 Constants
execute if score #temp FurnitureXTarget matches ..-900 run scoreboard players set #temp FurnitureXTarget -900
execute if score #temp FurnitureXTarget matches 900.. run scoreboard players set #temp FurnitureXTarget 900