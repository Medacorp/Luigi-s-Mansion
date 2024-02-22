function luigis_mansion:entities/ghost/ai

execute if entity @s[tag=hurt] run function luigis_mansion:entities/king_boo/ai/hurt
execute if entity @s[tag=!hurt] run function luigis_mansion:entities/king_boo/ai/not_hurt with entity @s data.mansion

execute if entity @s[scores={Sound=0,ActionTime=0},tag=!dying] run function luigis_mansion:entities/king_boo/ambient_sound

execute if entity @s[tag=dead] run function luigis_mansion:entities/king_boo/at_death with entity @s data.mansion