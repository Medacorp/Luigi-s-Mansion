scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
scoreboard players add @s[scores={AnimationProgress=1..20}] AnimationRotationX 5
scoreboard players remove @s[scores={AnimationProgress=21..60}] AnimationRotationX 5
scoreboard players add @s[scores={AnimationProgress=61..80}] AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=30}] run playsound luigis_mansion:furniture.rocking_chair.move_backward block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=70}] run playsound luigis_mansion:furniture.rocking_chair.move_forward block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0