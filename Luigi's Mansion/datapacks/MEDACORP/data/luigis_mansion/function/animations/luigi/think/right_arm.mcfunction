scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationX 90
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 90
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=41..45}] AnimationRotationX 30
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=46..50}] AnimationRotationX 30
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=51..55}] AnimationRotationX 30
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=56..60}] AnimationRotationX 30
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..10}] AnimationRotationY 50
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 0