execute facing entity @e[tag=luigi,tag=same_room,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
tag @s[y_rotation=45..135] add not_east
tag @s[y_rotation=-45..45] add not_north
tag @s[y_rotation=135..-135] add not_south
tag @s[y_rotation=-135..-45] add not_west
tag @s[x_rotation=45..90] add not_up
tag @s[x_rotation=-90..-45] add not_down
execute if entity @s[tag=west,tag=!not_west] run summon minecraft:marker ~ ~ ~ {Tags:["random_select","west"]}
execute if entity @s[tag=east,tag=!not_east] run summon minecraft:marker ~ ~ ~ {Tags:["random_select","east"]}
execute if entity @s[tag=south,tag=!not_south] run summon minecraft:marker ~ ~ ~ {Tags:["random_select","south"]}
execute if entity @s[tag=north,tag=!not_north] run summon minecraft:marker ~ ~ ~ {Tags:["random_select","north"]}
execute if entity @s[tag=up,tag=!not_up] run summon minecraft:marker ~ ~ ~ {Tags:["random_select","up"]}
execute if entity @s[tag=down,tag=!not_down] run summon minecraft:marker ~ ~ ~ {Tags:["random_select","down"]}
tag @e[type=minecraft:marker,tag=random_select,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=random_select,tag=selected,tag=west] run teleport @s ~ ~ ~ 90 0
execute if entity @e[type=minecraft:marker,tag=random_select,tag=selected,tag=east] run teleport @s ~ ~ ~ -90 0
execute if entity @e[type=minecraft:marker,tag=random_select,tag=selected,tag=south] run teleport @s ~ ~ ~ 0 0
execute if entity @e[type=minecraft:marker,tag=random_select,tag=selected,tag=north] run teleport @s ~ ~ ~ -180 0
execute if entity @e[type=minecraft:marker,tag=random_select,tag=selected,tag=up] run teleport @s ~ ~ ~ ~ -90
execute if entity @e[type=minecraft:marker,tag=random_select,tag=selected,tag=down] run teleport @s ~ ~ ~ ~ 90
tag @s remove not_east
tag @s remove not_north
tag @s remove not_south
tag @s remove not_west
tag @s remove not_up
tag @s remove not_down
execute unless entity @e[type=minecraft:marker,tag=random_select,limit=1] run function luigis_mansion:entities/boo/rotate
kill @e[type=minecraft:marker,tag=random_select]
tag @s add rotated
tag @s remove wall