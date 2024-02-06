function luigis_mansion:entities/ghost/ai
execute unless entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/garbage_can_ghost/ai/hurt with entity @s data.entity
execute if entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/garbage_can_ghost/ai/not_hurt with entity @s data.entity

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/garbage_can_ghost/ambient_sound with entity @s data.entity