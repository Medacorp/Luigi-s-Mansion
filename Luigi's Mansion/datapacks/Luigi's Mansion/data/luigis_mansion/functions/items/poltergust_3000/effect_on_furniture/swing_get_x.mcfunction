data modify entity @e[tag=interact,limit=1] Pos[0] set from entity @s Pos[0]
execute positioned as @s facing entity @e[tag=interact,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute store result score #temp FurnitureXTarget run data get entity @s Rotation[1] 10
scoreboard players remove #temp FurnitureXTarget 900
execute if entity @s[y_rotation=-1..1] run scoreboard players operation #temp FurnitureXTarget *= #-1 Constants
execute if score #temp FurnitureXTarget matches ..-900 run scoreboard players set #temp FurnitureXTarget -900
execute if score #temp FurnitureXTarget matches 900.. run scoreboard players set #temp FurnitureXTarget 900
teleport @e[tag=interact,limit=1] ~ ~ ~