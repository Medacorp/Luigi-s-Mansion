scoreboard players add @s[scores={RotationSpeed=9..999}] RotationSpeed 5
scoreboard players remove @s[scores={RotationSpeed=-999..-9}] RotationSpeed 5
execute if entity @s[scores={Sound=0}] run function luigis_mansion:entities/furniture/shake_sound