scoreboard players add @s AnimationProgress 1
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[-10.0f,0.0f,0.01f]}}
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0
execute if entity @s[scores={AnimationProgress=1}] run playsound luigis_mansion:entity.melody_pianissima.slam_piano hostile @a[tag=same_room] ~ ~ ~ 1