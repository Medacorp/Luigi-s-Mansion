summon minecraft:marker ~ ~ ~ {Tags:["breathe_fire","random_select"]}
summon minecraft:marker ~ ~ ~ {Tags:["vacuum","random_select"]}
tag @e[type=minecraft:marker,tag=random_select,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=random_select,tag=selected,tag=breathe_fire,limit=1] run tag @s add breathe_fire
execute if entity @e[type=minecraft:marker,tag=random_select,tag=selected,tag=vacuum,limit=1] run tag @s add vacuum
kill @e[type=minecraft:marker,tag=random_select]