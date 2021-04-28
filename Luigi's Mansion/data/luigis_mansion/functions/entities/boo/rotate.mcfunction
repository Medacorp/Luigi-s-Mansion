execute if entity @s[tag=west,tag=!not_west] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_select","west"]}
execute if entity @s[tag=east,tag=!not_east] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_select","east"]}
execute if entity @s[tag=south,tag=!not_south] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_select","south"]}
execute if entity @s[tag=north,tag=!not_north] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_select","north"]}
execute if entity @s[tag=up,tag=!not_up] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_select","up"]}
execute if entity @s[tag=down,tag=!not_down] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["random_select","down"]}
tag @e[tag=random_select,sort=random,limit=1] add selected
execute if entity @e[tag=random_select,tag=selected,tag=west] run teleport @s ~ ~ ~ 90 0
execute if entity @e[tag=random_select,tag=selected,tag=east] run teleport @s ~ ~ ~ -90 0
execute if entity @e[tag=random_select,tag=selected,tag=south] run teleport @s ~ ~ ~ 0 0
execute if entity @e[tag=random_select,tag=selected,tag=north] run teleport @s ~ ~ ~ -180 0
execute if entity @e[tag=random_select,tag=selected,tag=up] run teleport @s ~ ~ ~ ~ ~-90
execute if entity @e[tag=random_select,tag=selected,tag=down] run teleport @s ~ ~ ~ ~ ~90
execute unless entity @e[tag=random_select,limit=1] run function luigis_mansion:entities/boo/turn
tag @s add rotated
tag @s remove not_east
tag @s remove not_north
tag @s remove not_south
tag @s remove not_west
tag @s remove not_up
tag @s remove not_down