scoreboard players add @s AnimationProgress 1
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationX 40
scoreboard players remove @s[scores={AnimationProgress=4..7}] AnimationRotationX 40
scoreboard players add @s[scores={AnimationProgress=9..10}] AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=3}] run playsound luigis_mansion:furniture.rocking_horse.rock block @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=8}] run playsound luigis_mansion:furniture.rocking_horse.rock block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={AnimationProgress=10}] AnimationProgress 0
data remove entity @s[scores={AnimationProgress=0},tag=!was_shaking] data.animation