scoreboard players add @s AnimationProgress 1
data remove entity @s[tag=held_item] item
scoreboard players add @s[scores={AnimationProgress=1..235}] Time 2
scoreboard players add @s[scores={Time=1..20}] AnimationRotationX 30
scoreboard players remove @s[scores={Time=21..60}] AnimationRotationX 30
scoreboard players add @s[scores={Time=61..80}] AnimationRotationX 30
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=236..}] Time 0
scoreboard players set @s[scores={AnimationProgress=236}] AnimationRotationX -450
scoreboard players add @s[scores={AnimationProgress=250..269}] AnimationRotationY 40