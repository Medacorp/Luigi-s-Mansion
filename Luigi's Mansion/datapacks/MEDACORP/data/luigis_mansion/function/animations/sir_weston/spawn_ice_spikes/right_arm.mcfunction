scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
scoreboard players remove @s[scores={AnimationProgress=41..50}] AnimationRotationX 90
scoreboard players add @s[scores={AnimationProgress=51..60}] AnimationRotationX 80
scoreboard players add @s[scores={AnimationProgress=76..80}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=51..60}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=76..80}] AnimationRotationY 60
scoreboard players set @s[scores={AnimationProgress=80..}] AnimationProgress 0