scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -900
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=21..40}] run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=101..120}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=21..40}] run scoreboard players add @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=101..120}] run scoreboard players remove @s AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=21..40}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=101..120}] run scoreboard players remove @s AnimationRotationY 20
scoreboard players set @s[scores={AnimationProgress=120..}] AnimationProgress 0