scoreboard players add @s AnimationProgress 1
execute unless entity @s[scores={AnimationProgress=230..458}] run scoreboard players add @s[scores={AnimationProgress=1..858}] Time 2
execute if entity @s[scores={Time=1..20}] run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={Time=21..60}] run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={Time=61..80}] run scoreboard players remove @s AnimationRotationX 40
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=230..458}] Time 0
scoreboard players set @s[scores={AnimationProgress=230..458}] AnimationRotationX 0
scoreboard players set @s[scores={AnimationProgress=858..}] Time 0
scoreboard players set @s[scores={AnimationProgress=858}] AnimationRotationX 0