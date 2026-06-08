scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationX 120
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 20
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..5}] AnimationRotationY 140
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationY 140
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationZ 20
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=11..20}] AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0