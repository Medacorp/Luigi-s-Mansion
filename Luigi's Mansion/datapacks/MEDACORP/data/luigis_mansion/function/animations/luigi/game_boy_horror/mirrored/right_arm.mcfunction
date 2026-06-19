scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
scoreboard players add @s[scores={AnimationProgress=25..26}] AnimationRotationX 30
scoreboard players remove @s[scores={AnimationProgress=27..28}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=41..42}] AnimationRotationX 30
scoreboard players remove @s[scores={AnimationProgress=43..44}] AnimationRotationX 30
scoreboard players set @s[scores={AnimationProgress=50}] AnimationProgress 0