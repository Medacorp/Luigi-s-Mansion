scoreboard players add @s AnimationProgress 1
execute unless entity @s[scores={AnimationProgress=230..458}] run scoreboard players add @s[scores={AnimationProgress=1..858}] Time 2
scoreboard players add @s[scores={Time=1..20}] AnimationRotationX 40
scoreboard players remove @s[scores={Time=21..60}] AnimationRotationX 40
scoreboard players add @s[scores={Time=61..80}] AnimationRotationX 40
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=230..458}] Time 0
scoreboard players set @s[scores={AnimationProgress=230..458}] AnimationRotationX 0
scoreboard players set @s[scores={AnimationProgress=858..}] Time 0
scoreboard players set @s[scores={AnimationProgress=858}] AnimationRotationX 0