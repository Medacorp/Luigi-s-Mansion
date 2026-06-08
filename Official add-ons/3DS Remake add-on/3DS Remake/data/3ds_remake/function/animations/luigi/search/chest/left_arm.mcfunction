scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 200
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..3}] AnimationRotationX 40
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=4..6}] AnimationRotationX 40
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=7..9}] AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0