tag @s remove dark_room
function #luigis_mansion:room/dark_room

execute store result score #temp Time run data get entity @s ArmorItems[3].tag.CustomModelData
execute if entity @s[tag=was_dark_room,tag=!dark_room] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players add #temp Time 1
execute if entity @s[tag=!was_dark_room,tag=dark_room] store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players remove #temp Time 1
scoreboard players reset #temp Time

execute if entity @s[tag=!dark_room,tag=!head_light] positioned ~ ~0.5 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:light[level=15] replace minecraft:air
execute if entity @s[tag=dark_room,tag=!head_light] positioned ~ ~0.5 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:air replace minecraft:light[level=15]
execute if entity @s[tag=falling,tag=!head_light] positioned ~ ~1.5 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:air replace minecraft:light[level=15]
execute if entity @s[tag=falling,tag=!head_light] positioned ~ ~-0.5 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:air replace minecraft:light[level=15]
execute if entity @s[tag=!dark_room,tag=head_light] positioned ~ ~1.3 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:light[level=15] replace minecraft:air
execute if entity @s[tag=dark_room,tag=head_light] positioned ~ ~1.3 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:air replace minecraft:light[level=15]
execute if entity @s[tag=falling,tag=head_light] positioned ~ ~2.3 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:air replace minecraft:light[level=15]
execute if entity @s[tag=falling,tag=head_light] positioned ~ ~0.3 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:air replace minecraft:light[level=15]

tag @s[tag=dark_room] add was_dark_room
tag @s[tag=!dark_room] remove was_dark_room