scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1},tag=!no_visual_shake_animation] run scoreboard players add @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=2..3},tag=!no_visual_shake_animation] run scoreboard players remove @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=4},tag=!no_visual_shake_animation] run scoreboard players add @s AnimationRotationZ 40
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0