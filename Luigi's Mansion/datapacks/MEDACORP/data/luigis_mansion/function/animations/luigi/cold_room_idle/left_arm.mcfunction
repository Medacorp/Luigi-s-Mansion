scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 200
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -1800
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 600
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 700
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1800
scoreboard players add @s[scores={AnimationProgress=1..2}] AnimationRotationZ 10
scoreboard players remove @s[scores={AnimationProgress=3..4}] AnimationRotationZ 10
scoreboard players set @s[scores={AnimationProgress=4}] AnimationProgress 0