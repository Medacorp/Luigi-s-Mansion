execute unless entity @s[tag=!remove_from_existence,tag=!dead] run tag @s remove lit
function #luigis_mansion:entities/furniture/type
execute if entity @s[scores={FurnitureLightStrength=0..15}] run function luigis_mansion:old_entities/furniture/spawn/light
tag @s remove in_vacuum
tag @s remove in_dust
tag @s remove in_fire
tag @s remove in_water
tag @s remove in_ice
tag @s remove search
tag @s remove drop_loot
execute if entity @s[tag=!remove_from_existence,tag=!dead,tag=debug_furniture] run function luigis_mansion:old_entities/furniture/debug
execute if entity @s[tag=!remove_from_existence,tag=!dead] unless entity @s[tag=debug_furniture] if score #debug_furniture Selected matches 1.. run function luigis_mansion:old_entities/furniture/debug