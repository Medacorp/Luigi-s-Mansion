scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players add @s[scores={AnimationProgress=2..4}] AnimationRotationZ 50
scoreboard players remove @s[scores={AnimationProgress=6..8}] AnimationRotationZ 50
scoreboard players remove @s[scores={AnimationProgress=12..14}] AnimationRotationZ 50
scoreboard players add @s[scores={AnimationProgress=16..18}] AnimationRotationZ 50
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0