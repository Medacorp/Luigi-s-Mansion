scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -300
scoreboard players add @s[scores={AnimationProgress=3..10}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=11..18}] AnimationRotationX 2
scoreboard players add @s[scores={AnimationProgress=20..21}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=23..24}] AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0