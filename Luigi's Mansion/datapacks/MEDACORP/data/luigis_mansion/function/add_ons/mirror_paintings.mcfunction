execute store result score #temp Time run data get entity @s Item.components."minecraft:map_id"
execute if score #temp Time matches ..246 run tag @s add increase
execute if entity @s[tag=increase] if score #temp Time matches 78..107 store result entity @s Item.components."minecraft:map_id" int 1 run scoreboard players add #temp Time 169
execute if entity @s[tag=increase] if score #temp Time matches 111..138 store result entity @s Item.components."minecraft:map_id" int 1 run scoreboard players add #temp Time 166
execute if entity @s[tag=increase] if score #temp Time matches 142..159 store result entity @s Item.components."minecraft:map_id" int 1 run scoreboard players add #temp Time 163
execute if entity @s[tag=increase] if score #temp Time matches 182..246 store result entity @s Item.components."minecraft:map_id" int 1 run scoreboard players add #temp Time 153
execute if entity @s[tag=!increase] if score #temp Time matches 247..276 store result entity @s Item.components."minecraft:map_id" int 1 run scoreboard players remove #temp Time 169
execute if entity @s[tag=!increase] if score #temp Time matches 277..304 store result entity @s Item.components."minecraft:map_id" int 1 run scoreboard players remove #temp Time 166
execute if entity @s[tag=!increase] if score #temp Time matches 305..322 store result entity @s Item.components."minecraft:map_id" int 1 run scoreboard players remove #temp Time 163
execute if entity @s[tag=!increase] if score #temp Time matches 335..399 store result entity @s Item.components."minecraft:map_id" int 1 run scoreboard players remove #temp Time 153
tag @s remove increase
scoreboard players reset #temp Time