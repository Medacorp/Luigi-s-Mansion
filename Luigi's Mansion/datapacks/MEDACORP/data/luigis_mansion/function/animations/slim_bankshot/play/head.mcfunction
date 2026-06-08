scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 8
scoreboard players remove @s[scores={AnimationProgress=38..42}] AnimationRotationX 24
scoreboard players add @s[scores={AnimationProgress=43..52}] AnimationRotationX 8
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0