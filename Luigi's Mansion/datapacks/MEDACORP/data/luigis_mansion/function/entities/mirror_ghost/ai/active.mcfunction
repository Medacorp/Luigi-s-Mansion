function luigis_mansion:entities/ghost/get_target
execute unless entity @s[tag=!attack,tag=!visible] run tag @s[tag=basher] remove in_fire
execute unless entity @s[tag=!attack,tag=!visible] run tag @s[tag=basher] remove in_water
execute unless entity @s[tag=!attack,tag=!visible] run tag @s[tag=basher] remove in_ice
execute unless entity @s[tag=!hurt,tag=!element_hurt] run function luigis_mansion:entities/grabbing_ghost/ai/hurt with entity @s data.entity
execute if entity @s[tag=!hurt,tag=!element_hurt,scores={StunTime=0}] run function luigis_mansion:entities/grabbing_ghost/ai/not_hurt

execute unless entity @s[tag=!element_hurt,scores={VulnerableTime=0,ActionTime=0}] run tag @s[tag=!vanish,tag=!basher] add visible
execute if entity @s[tag=!element_hurt,scores={VulnerableTime=0,ActionTime=0}] run tag @s[tag=!vanish,tag=!basher] remove visible
tag @s[tag=appear] remove visible

execute at @s run function luigis_mansion:entities/ghost/ai

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying,tag=!vanish,tag=!hidden] run function luigis_mansion:entities/grabbing_ghost/ambient_sound with entity @s data.entity