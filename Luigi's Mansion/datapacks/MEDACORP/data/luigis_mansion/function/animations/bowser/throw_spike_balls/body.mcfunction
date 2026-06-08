scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:entity.bowser.charge hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=40}] run playsound luigis_mansion:entity.bowser.throw hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=50}] run playsound luigis_mansion:entity.bowser.throw hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={AnimationProgress=60}] run playsound luigis_mansion:entity.bowser.throw_last hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={AnimationProgress=80}] AnimationProgress 0