scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -100
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:entity.melody_pianissima.slam_piano hostile @a[tag=same_room] ~ ~ ~ 1