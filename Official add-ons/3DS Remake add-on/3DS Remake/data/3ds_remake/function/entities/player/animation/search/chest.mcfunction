scoreboard players add @s AnimationProgress 1
tag @s[scores={AnimationProgress=1}] add reset_rotation
tag @s[scores={AnimationProgress=15}] remove reset_rotation
tag @s add keep_poltergust_grabbed
execute if entity @s[scores={AnimationProgress=15}] run function luigis_mansion:entities/player/animation/set/none