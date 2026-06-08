scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
execute if entity @s[scores={AnimationProgress=1..20}] run scoreboard players add @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=21..60}] run scoreboard players remove @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=61..80}] run scoreboard players add @s AnimationRotationX 5
execute if entity @s[scores={AnimationProgress=30}] run playsound luigis_mansion:furniture.rocking_chair.move_backward block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=70}] run playsound luigis_mansion:furniture.rocking_chair.move_forward block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0