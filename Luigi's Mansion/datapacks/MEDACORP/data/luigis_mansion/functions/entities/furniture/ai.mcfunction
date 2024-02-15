execute unless entity @s[tag=!remove_from_existence,tag=!dead] run tag @s remove lit
$function luigis_mansion:entities/furniture/type/$(furniture_type)
execute if entity @s[tag=mirror,tag=reflects_entities] run function luigis_mansion:entities/furniture/type/mirror
execute if entity @s[tag=rocking_chair] run function luigis_mansion:entities/furniture/type/rocking_chair
execute if entity @s[tag=elemental_source] run function luigis_mansion:entities/furniture/type/elemental_source
execute if entity @s[tag=lamp] run function luigis_mansion:entities/furniture/type/lamp
execute if entity @s[scores={FurnitureLightStrength=0..15}] run function luigis_mansion:entities/furniture/spawn/light
tag @s remove search
tag @s remove drop_loot