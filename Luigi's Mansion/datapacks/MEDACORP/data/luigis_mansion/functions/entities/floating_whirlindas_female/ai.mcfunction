execute if entity @s[tag=hurt] run function luigis_mansion:entities/floating_whirlindas_female/ai/hurt
execute if entity @s[tag=!hurt,scores={StunTime=0}] run function luigis_mansion:entities/floating_whirlindas_female/ai/not_hurt with entity @s data.mansion

teleport @s[tag=lead,tag=!hurt] ^ ^ ^0.7
execute at @s run function luigis_mansion:entities/ghost/ai
execute at @s[tag=lead,tag=!hurt] run teleport @s ^ ^ ^-0.7

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/floating_whirlindas_female/ambient_sound

execute if entity @s[tag=dead] run function luigis_mansion:entities/floating_whirlindas_female/at_death with entity @s data.mansion