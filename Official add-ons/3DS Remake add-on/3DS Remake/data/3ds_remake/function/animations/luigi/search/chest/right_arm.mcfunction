scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -700
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
execute if entity @s[scores={AnimationProgress=1..3}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=4..6}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=7..9}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0