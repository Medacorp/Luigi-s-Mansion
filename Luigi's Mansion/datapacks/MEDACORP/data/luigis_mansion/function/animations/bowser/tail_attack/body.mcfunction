scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=11}] run playsound luigis_mansion:entity.bowser.wave_tail hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0