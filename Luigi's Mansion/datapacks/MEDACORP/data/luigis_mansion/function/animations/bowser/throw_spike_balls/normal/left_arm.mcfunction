scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -140
scoreboard players add @s[scores={AnimationProgress=41..50}] AnimationRotationX 30
scoreboard players remove @s[scores={AnimationProgress=51..60}] AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0