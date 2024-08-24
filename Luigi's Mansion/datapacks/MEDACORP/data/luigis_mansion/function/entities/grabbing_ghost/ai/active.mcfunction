function luigis_mansion:entities/ghost/get_target
tag @s[tag=!attack,tag=!visible,tag=basher] remove in_fire
tag @s[tag=!attack,tag=!visible,tag=basher] remove in_water
tag @s[tag=!attack,tag=!visible,tag=basher] remove in_ice
execute unless entity @s[tag=!hurt,tag=!element_hurt] run function luigis_mansion:entities/grabbing_ghost/ai/hurt with entity @s data.entity
execute if entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/grabbing_ghost/ai/not_hurt

execute at @s run function luigis_mansion:entities/ghost/ai

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying,tag=!vanish,tag=!hidden] run function luigis_mansion:entities/grabbing_ghost/ambient_sound with entity @s data.entity