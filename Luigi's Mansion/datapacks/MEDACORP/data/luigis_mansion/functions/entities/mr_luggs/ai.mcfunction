execute if entity @s[tag=hurt] run function luigis_mansion:entities/mr_luggs/ai/hurt
execute if entity @s[tag=!hurt,scores={StunTime=0}] run function luigis_mansion:entities/mr_luggs/ai/not_hurt with entity @s data.mansion

function luigis_mansion:entities/ghost/ai

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/mr_luggs/ambient_sound

execute if entity @s[tag=dead] run function luigis_mansion:entities/mr_luggs/at_death with entity @s data.mansion