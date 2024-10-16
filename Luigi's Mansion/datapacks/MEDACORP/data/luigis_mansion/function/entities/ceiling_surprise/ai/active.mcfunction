function luigis_mansion:entities/ghost/get_target
execute unless entity @s[tag=!attack,tag=!visible] run tag @s[tag=basher] remove element_hurt
execute unless entity @s[tag=!hurt,tag=!element_hurt] run function luigis_mansion:entities/ceiling_surprise/ai/hurt with entity @s data.entity
execute if entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/ceiling_surprise/ai/not_hurt

execute at @s run function luigis_mansion:entities/ghost/ai

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying,tag=!vanish,tag=!hidden] run function luigis_mansion:entities/ceiling_surprise/ambient_sound with entity @s data.entity