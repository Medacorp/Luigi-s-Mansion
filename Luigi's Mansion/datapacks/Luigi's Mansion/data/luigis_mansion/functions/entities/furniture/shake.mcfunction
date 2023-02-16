execute if entity @s[tag=!long_shake,tag=!use_medium_shake] run function luigis_mansion:animations/furniture/shake
execute if entity @s[tag=use_medium_shake] run function luigis_mansion:animations/furniture/medium_shake
execute if entity @s[tag=long_shake,tag=!use_medium_shake] run function luigis_mansion:animations/furniture/long_shake
execute if entity @s[scores={Sound=0}] unless entity @s[tag=!long_shake,tag=!use_medium_shake,scores={AnimationProg=3}] unless entity @s[scores={AnimationProg=0}] unless entity @s[tag=use_medium_shake,scores={AnimationProg=2..5}] unless entity @s[tag=use_medium_shake,scores={AnimationProg=7..10}] unless entity @s[tag=use_medium_shake,scores={AnimationProg=12..15}] unless entity @s[tag=use_medium_shake,scores={AnimationProg=17..20}] unless entity @s[tag=long_shake,tag=!use_medium_shake,scores={AnimationProg=2..10}] unless entity @s[tag=long_shake,tag=!use_medium_shake,scores={AnimationProg=12..16}] run function #luigis_mansion:entities/furniture/shake_sound
tag @s[scores={AnimationProg=0}] remove shake
tag @s[scores={AnimationProg=0}] remove long_shake
execute unless entity @s[tag=rolling,scores={FurnitureVacuum=1..}] run tag @s add was_shaking