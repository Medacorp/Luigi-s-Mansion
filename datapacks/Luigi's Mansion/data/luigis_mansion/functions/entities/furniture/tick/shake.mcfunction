execute if entity @s[tag=!long_shake] unless entity @s[tag=rolling,scores={FurnitureSearch=1..}] run function luigis_mansion:animations/furniture/shake
execute if entity @s[tag=long_shake] unless entity @s[tag=rolling,scores={FurnitureSearch=1..}] run function luigis_mansion:animations/furniture/long_shake
execute if entity @s[scores={Sound=0}] unless entity @s[tag=long_shake,scores={AnimationProg=2..10}] unless entity @s[tag=long_shake,scores={AnimationProg=12..16}] run function luigis_mansion:animations/furniture/shake_sound
tag @s add was_shaking