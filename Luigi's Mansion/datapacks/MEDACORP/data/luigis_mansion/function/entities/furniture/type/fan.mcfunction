tag @s add no_visual_shake_animation
tag @s[tag=in_vacuum,tag=searchable_by_vacuum] add increase_speed
tag @s[tag=in_dust,tag=searchable_by_dust] add increase_speed
tag @s[tag=in_fire,tag=searchable_by_fire] add increase_speed
tag @s[tag=in_water,tag=searchable_by_water] add increase_speed
tag @s[tag=in_ice,tag=searchable_by_ice] add increase_speed
execute if entity @s[tag=!increase_speed] if score @s FurnitureRotationSpeed > @s FurnitureRotationSpeedDefault run function luigis_mansion:entities/furniture/type/fan/decrease_speed
execute if entity @s[tag=increase_speed] run function luigis_mansion:entities/furniture/type/fan/increase_speed
execute unless entity @s[scores={FurnitureRotationSpeed=0}] run function luigis_mansion:entities/furniture/type/fan/turn

execute unless entity @s[scores={FurnitureRotationSpeed=..999}] if entity @s[tag=!searched] run function luigis_mansion:entities/furniture/search/generic
tag @s[scores={FurnitureRotationSpeed=..799}] remove searched