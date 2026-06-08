scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
scoreboard players remove @s[scores={AnimationProgress=1..8}] AnimationRotationZ 5
scoreboard players add @s[scores={AnimationProgress=9..24}] AnimationRotationZ 5
scoreboard players remove @s[scores={AnimationProgress=25..32}] AnimationRotationZ 5
execute if entity @s[scores={AnimationProgress=9}] run playsound luigis_mansion:entity.bowser.walk hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=25}] run playsound luigis_mansion:entity.bowser.walk hostile @a[tag=same_room] ~ ~ ~ 3 0.8
scoreboard players set @s[scores={AnimationProgress=33}] AnimationProgress 0