scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..13}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=14..26}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=27..39}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=40..52}] AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=52..}] AnimationProgress 0