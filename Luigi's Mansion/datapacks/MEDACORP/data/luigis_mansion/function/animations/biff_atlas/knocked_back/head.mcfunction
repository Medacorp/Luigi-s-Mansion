scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 190
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=41..50}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=61..70}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=71..80}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=120..}] AnimationProgress 0