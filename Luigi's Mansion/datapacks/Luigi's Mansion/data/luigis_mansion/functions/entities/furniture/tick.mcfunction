function #luigis_mansion:entities/furniture/type
tag @s remove in_vacuum
tag @s remove in_dust
tag @s remove in_fire
tag @s remove in_water
tag @s remove in_ice
tag @s remove search
tag @s remove drop_loot
execute if entity @s[tag=debug_furniture] run function luigis_mansion:entities/furniture/debug
execute unless entity @s[tag=debug_furniture] if score #debug_furniture Selected matches 1.. run function luigis_mansion:entities/furniture/debug