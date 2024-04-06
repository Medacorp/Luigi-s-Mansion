scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[10.0f,0.0f,0.01f]}}
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:entity.bowser.charge hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=40}] run playsound luigis_mansion:entity.bowser.throw hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=50}] run playsound luigis_mansion:entity.bowser.throw hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=60}] run playsound luigis_mansion:entity.bowser.throw_last hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0