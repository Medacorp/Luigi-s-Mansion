tag @s add no_visible_shake
execute if entity @s[tag=shake] run function luigis_mansion:entities/furniture/shake
execute unless entity @s[tag=!in_vacuum,tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice] run function luigis_mansion:entities/furniture/type/tick/fan/increase_speed
execute if entity @s[tag=!in_vacuum,tag=!in_dust,tag=!in_fire,tag=!in_water,tag=!in_ice] if score @s RotationSpeed > @s RotationSpeedDef run function luigis_mansion:entities/furniture/type/tick/fan/decrease_speed
function luigis_mansion:entities/furniture/type/tick/fan/turn

execute unless entity @s[scores={RotationSpeed=..999}] if entity @s[tag=!searched] run function luigis_mansion:entities/furniture/search/generic
execute unless entity @s[scores={RotationSpeed=..999}] run tag @s add searched
tag @s[scores={RotationSpeed=..799}] remove searched
execute if entity @s[tag=searchable_by_interact,tag=search] run function luigis_mansion:entities/furniture/search/generic
tag @s[tag=!searchable_by_interact,tag=search] add open
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/search/generic

execute if entity @s[tag=open,scores={ActionTime=0..}] run function #luigis_mansion:entities/furniture/open

execute if entity @s[tag=sparkles,tag=!open] run function luigis_mansion:entities/furniture/spawn/sparkles