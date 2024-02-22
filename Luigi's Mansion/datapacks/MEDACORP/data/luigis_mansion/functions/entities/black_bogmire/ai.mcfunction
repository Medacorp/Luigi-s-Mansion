tag @s remove element_hurt
tag @s[tag=elemental_freeze_animation] remove freeze_animation
tag @s remove freeze
tag @s remove elemental_freeze_animation
tag @s remove disappear
function luigis_mansion:entities/ghost/ai

execute if entity @s[tag=in_vacuum,scores={SpawnTime=100..},tag=!vanish,tag=!appear] run function luigis_mansion:entities/black_bogmire/ai/hurt
execute unless entity @s[tag=in_vacuum,scores={SpawnTime=100..},tag=!vanish,tag=!appear] if entity @s[tag=in_vacuum_2] run function luigis_mansion:entities/black_bogmire/ai/hurt
execute unless entity @s[tag=in_vacuum,scores={SpawnTime=100..},tag=!vanish,tag=!appear] unless entity @s[tag=in_vacuum_2] run function luigis_mansion:entities/black_bogmire/ai/not_hurt with entity @s data.entity

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/black_bogmire/ambient_sound with entity @s data.entity