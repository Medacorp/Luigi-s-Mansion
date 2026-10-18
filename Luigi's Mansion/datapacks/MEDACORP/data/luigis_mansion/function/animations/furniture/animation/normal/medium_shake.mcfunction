scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..2},tag=!no_visual_shake_animation] run scoreboard players add @s AnimationRotationZ 50
execute if entity @s[scores={AnimationProgress=3..6},tag=!no_visual_shake_animation] run scoreboard players remove @s AnimationRotationZ 50
execute if entity @s[scores={AnimationProgress=7..10},tag=!no_visual_shake_animation] run scoreboard players add @s AnimationRotationZ 50
execute if entity @s[scores={AnimationProgress=11..12},tag=!no_visual_shake_animation] run scoreboard players remove @s AnimationRotationZ 50
scoreboard players set @s[scores={AnimationProgress=15}] AnimationProgress 0