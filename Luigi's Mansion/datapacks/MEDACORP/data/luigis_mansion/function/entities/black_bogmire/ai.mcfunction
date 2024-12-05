function luigis_mansion:entities/ghost/get_target
tag @s remove element_hurt
tag @s[tag=elemental_freeze_animation] remove freeze_animation
tag @s remove freeze
tag @s remove elemental_freeze_animation
tag @s remove disappear

execute if entity @s[tag=in_vacuum,tag=!vanish,tag=!appear] run function luigis_mansion:entities/black_bogmire/ai/hurt with entity @s data.entity
execute if entity @s[tag=!in_vacuum,tag=!vanish,tag=!appear,tag=!in_vacuum_2] run function luigis_mansion:entities/black_bogmire/ai/not_hurt with entity @s data.entity
execute if entity @s[tag=!in_vacuum,tag=!vanish,tag=!appear,tag=in_vacuum_2] run function luigis_mansion:entities/black_bogmire/ai/hurt with entity @s data.entity

execute if entity @e[tag=exact_same_room,tag=luigi,distance=..0.7,limit=1] if entity @s[tag=!vanish] run function luigis_mansion:entities/black_bogmire/collide with entity @s data.entity

execute at @s[tag=succumb] run function luigis_mansion:entities/black_bogmire/succumb with entity @s data.entity
execute at @s[tag=vanish] run function luigis_mansion:entities/black_bogmire/vanish with entity @s data.entity
execute at @s[tag=appear] run function luigis_mansion:entities/black_bogmire/appear with entity @s data.entity

execute at @s run function luigis_mansion:entities/ghost/ai

execute if entity @s[scores={Sound=0},nbt={data:{animation:{namespace:"luigis_mansion",id:"black_idle"}}}] run function luigis_mansion:entities/black_bogmire/ambient_sound with entity @s data.entity