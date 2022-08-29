data modify entity @e[tag=interact,limit=1] Pos[2] set from entity @s Pos[2]
execute positioned as @s facing entity @e[tag=interact,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute store result score #temp FurnitureZTarget run data get entity @s Rotation[1] 10
scoreboard players remove #temp FurnitureZTarget 900
execute if entity @s[y_rotation=89..91] run scoreboard players operation #temp FurnitureZTarget *= #-1 Constants
execute if score #temp FurnitureZTarget matches ..-900 run scoreboard players set #temp FurnitureZTarget -900
execute if score #temp FurnitureZTarget matches 900.. run scoreboard players set #temp FurnitureZTarget 900
teleport @e[tag=interact,limit=1] ~ ~ ~