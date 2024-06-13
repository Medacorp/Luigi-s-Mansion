function luigis_mansion:entities/ghost/get_target

execute unless entity @s[tag=!hurt,tag=!element_hurt] run function luigis_mansion:entities/mr_bones/ai/hurt with entity @s data.entity
execute if entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/mr_bones/ai/not_hurt

function luigis_mansion:entities/ghost/ai

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying,tag=!vanish,tag=!hidden] run function luigis_mansion:entities/mr_bones/ambient_sound with entity @s data.entity