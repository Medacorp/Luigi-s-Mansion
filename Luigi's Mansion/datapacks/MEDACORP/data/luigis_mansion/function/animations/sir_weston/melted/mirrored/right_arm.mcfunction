scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1100
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 350
scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=6..9}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=11..14}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=16..19}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0