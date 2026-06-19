scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -1800
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=5..6}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=7..8}] AnimationRotationX 10
scoreboard players add @s[scores={AnimationProgress=17..18}] AnimationRotationX 10
scoreboard players remove @s[scores={AnimationProgress=19..20}] AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=24}] AnimationProgress 0