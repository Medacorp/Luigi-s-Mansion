scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=5..8}] AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=8..}] AnimationProgress 0