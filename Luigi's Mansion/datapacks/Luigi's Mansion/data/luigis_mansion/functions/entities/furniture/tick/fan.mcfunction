tag @s add no_visible_shake
tag @s remove long_shake
execute if entity @s[tag=shake] run function luigis_mansion:entities/furniture/tick/shake
execute if entity @s[tag=in_vacuum] run function luigis_mansion:entities/furniture/tick/increase_speed
execute if entity @s[tag=!in_vacuum] if score @s RotationSpeed > @s RotationSpeedDef run function luigis_mansion:entities/furniture/tick/decrease_speed
function luigis_mansion:entities/furniture/tick/turn_fan
tag @s remove in_vacuum

execute unless entity @s[scores={RotationSpeed=..999}] if entity @s[tag=!searched,tag=searchable_by_vacuum] run function luigis_mansion:entities/furniture/tick/search
execute unless entity @s[scores={RotationSpeed=..999}] run tag @s[tag=searchable_by_vacuum] add searched
tag @s[scores={RotationSpeed=..799}] remove searched
execute if entity @s[tag=searchable_by_hand,tag=search] run function luigis_mansion:entities/furniture/tick/search
tag @s[tag=!searchable_by_hand,tag=search] add open
tag @s remove search
execute if entity @s[tag=drop_loot] run function luigis_mansion:entities/furniture/tick/search
tag @s remove drop_loot