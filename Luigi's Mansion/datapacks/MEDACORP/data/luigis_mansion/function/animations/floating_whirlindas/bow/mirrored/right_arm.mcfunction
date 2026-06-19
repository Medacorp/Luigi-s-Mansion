scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 900
scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationX 30
scoreboard players remove @s[scores={AnimationProgress=21..40}] AnimationRotationX 30
scoreboard players add @s[scores={AnimationProgress=21..40}] AnimationRotationY 30
scoreboard players remove @s[scores={AnimationProgress=101..120}] AnimationRotationY 30
scoreboard players set @s[scores={AnimationProgress=120..}] AnimationProgress 0