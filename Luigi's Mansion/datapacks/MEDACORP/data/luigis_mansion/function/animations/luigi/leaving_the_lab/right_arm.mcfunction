scoreboard players add @s AnimationProgress 1
data remove entity @s[tag=held_item] equipment.head
scoreboard players add @s[scores={AnimationProgress=1..235}] Time 2
execute if entity @s[scores={Time=1..20}] run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={Time=21..60}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={Time=61..80}] run scoreboard players add @s AnimationRotationX 30
scoreboard players set @s[scores={Time=80..}] Time 0
scoreboard players set @s[scores={AnimationProgress=236..}] Time 0
scoreboard players set @s[scores={AnimationProgress=236}] AnimationRotationX -450
execute if entity @s[scores={AnimationProgress=250..269}] run scoreboard players add @s AnimationRotationY 40