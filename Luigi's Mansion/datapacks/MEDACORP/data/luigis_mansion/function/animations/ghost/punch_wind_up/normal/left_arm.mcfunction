scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 200
scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationY 20
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=6..10}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0