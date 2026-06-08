scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
scoreboard players add @s[scores={AnimationProgress=11..15}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=16..25}] AnimationRotationY 30
scoreboard players add @s[scores={AnimationProgress=26..30}] AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0