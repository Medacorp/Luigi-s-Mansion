scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players add @s[scores={AnimationProgress=1..4}] AnimationRotationZ 10
scoreboard players remove @s[scores={AnimationProgress=5..12}] AnimationRotationZ 10
scoreboard players add @s[scores={AnimationProgress=13..16}] AnimationRotationZ 10
execute if entity @s[scores={AnimationProgress=5}] run playsound luigis_mansion:entity.bowser.walk hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=13}] run playsound luigis_mansion:entity.bowser.walk hostile @a[tag=same_room] ~ ~ ~ 3 0.8
scoreboard players set @s[scores={AnimationProgress=16}] AnimationProgress 0