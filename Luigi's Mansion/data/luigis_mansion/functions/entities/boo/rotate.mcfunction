execute if entity @s[tag=west] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_select","west"]}
execute if entity @s[tag=east] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_select","east"]}
execute if entity @s[tag=south] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_select","south"]}
execute if entity @s[tag=north] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_select","north"]}
tag @e[tag=random_select,sort=random,limit=1] add selected
execute if entity @e[tag=random_select,tag=selected,tag=west] run teleport @s ~ ~ ~ 90 ~
execute if entity @e[tag=random_select,tag=selected,tag=east] run teleport @s ~ ~ ~ -90 ~
execute if entity @e[tag=random_select,tag=selected,tag=south] run teleport @s ~ ~ ~ 0 ~
execute if entity @e[tag=random_select,tag=selected,tag=north] run teleport @s ~ ~ ~ -180 ~
execute unless entity @e[tag=random_select,limit=1] run function luigis_mansion:entities/boo/turn
tag @s add rotated