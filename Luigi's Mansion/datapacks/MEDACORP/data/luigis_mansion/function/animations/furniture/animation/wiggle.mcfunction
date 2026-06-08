scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..7}] AnimationRotationZ 30
scoreboard players remove @s[scores={AnimationProgress=10..23}] AnimationRotationZ 30
scoreboard players add @s[scores={AnimationProgress=26..32}] AnimationRotationZ 30
scoreboard players set @s[scores={AnimationProgress=32}] AnimationProgress 0