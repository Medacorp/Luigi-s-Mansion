function luigis_mansion:entities/boolossus/ai/not_hurt with entity @s data.mansion

function luigis_mansion:entities/ghost/ai

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/boolossus/ambient_sound

execute if entity @s[tag=dead] run function luigis_mansion:entities/boolossus/at_death with entity @s data.mansion