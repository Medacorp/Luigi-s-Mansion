scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players remove @s AnimationRotationZ 5
execute if entity @s[scores={AnimationProgress=9..24}] run scoreboard players add @s AnimationRotationZ 5
execute if entity @s[scores={AnimationProgress=25..32}] run scoreboard players remove @s AnimationRotationZ 5
execute if entity @s[scores={AnimationProgress=9}] run playsound luigis_mansion:entity.bowser.walk hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=25}] run playsound luigis_mansion:entity.bowser.walk hostile @a[tag=same_room] ~ ~ ~ 3 0.8
scoreboard players set @s[scores={AnimationProgress=33}] AnimationProgress 0