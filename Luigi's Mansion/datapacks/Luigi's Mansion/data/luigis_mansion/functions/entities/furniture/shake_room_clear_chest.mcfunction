function luigis_mansion:animations/furniture/shake_room_clear_chest
execute if entity @s[scores={Sound=0},tag=!open] run function luigis_mansion:blocks/search_sound/chest
scoreboard players set @s[scores={Sound=0},tag=!open] Sound 20
tag @s[scores={AnimationProg=0}] remove shake
tag @s[scores={AnimationProg=0}] remove long_shake
tag @s add was_shaking