scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 350
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=31..40}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=41..50}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=51..60}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=61..70}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=71..80}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=81..90}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=91..100}] run scoreboard players remove @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=101..110}] run scoreboard players add @s AnimationRotationY 10
execute if entity @s[scores={AnimationProgress=111..120}] run scoreboard players remove @s AnimationRotationY 10
scoreboard players set @s[scores={AnimationProgress=120..}] AnimationProgress 0