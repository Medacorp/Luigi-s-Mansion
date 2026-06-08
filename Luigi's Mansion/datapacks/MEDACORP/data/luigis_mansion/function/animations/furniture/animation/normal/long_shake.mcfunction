scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..4},tag=!no_visual_shake_animation] run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=5..12},tag=!no_visual_shake_animation] run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=13..15},tag=!no_visual_shake_animation] run scoreboard players add @s AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=15}] AnimationProgress 0