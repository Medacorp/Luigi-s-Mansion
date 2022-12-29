execute if entity @s[tag=!dark_room] run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:light[level=15,waterlogged=false] replace minecraft:air
execute if entity @s[tag=!dark_room] run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:light[level=15,waterlogged=true] replace minecraft:water[level=0]
execute if entity @s[tag=dark_room] run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:air replace minecraft:light[level=15,waterlogged=false]
execute if entity @s[tag=dark_room] run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:water[level=0] replace minecraft:light[level=15,waterlogged=true]
execute if entity @s[tag=falling] positioned ~ ~1 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:air replace minecraft:light[level=15,waterlogged=false]
execute if entity @s[tag=falling] positioned ~ ~1 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:water[level=0] replace minecraft:light[level=15,waterlogged=true]
execute if entity @s[tag=falling] positioned ~ ~-1 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:air replace minecraft:light[level=15,waterlogged=false]
execute if entity @s[tag=falling] positioned ~ ~-1 ~ run fill ~-0.4 ~-0.4 ~-0.4 ~0.4 ~0.4 ~0.4 minecraft:water[level=0] replace minecraft:light[level=15,waterlogged=true]
