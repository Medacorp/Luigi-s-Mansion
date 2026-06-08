scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=21..40}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=51..55}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=56..65}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=66..75}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=76..85}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=85..90}] run scoreboard players remove @s AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=100}] AnimationProgress 0