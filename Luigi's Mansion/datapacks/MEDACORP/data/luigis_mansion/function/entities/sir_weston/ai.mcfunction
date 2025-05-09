function luigis_mansion:entities/ghost/get_target
execute if entity @s[tag=hurt] run function luigis_mansion:entities/sir_weston/ai/hurt
execute if entity @s[tag=!hurt,scores={StunTime=0}] run function luigis_mansion:entities/sir_weston/ai/not_hurt with entity @s data.mansion

execute at @s run function luigis_mansion:entities/ghost/ai

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying,tag=!vanish,tag=!hidden] run function luigis_mansion:entities/sir_weston/ambient_sound

execute if entity @s[tag=dead] run function luigis_mansion:entities/sir_weston/at_death with entity @s data.mansion