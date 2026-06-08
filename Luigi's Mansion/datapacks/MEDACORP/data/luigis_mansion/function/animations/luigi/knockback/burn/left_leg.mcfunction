scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=1..5}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=6..10}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=11..15}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=16..20}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=21..25}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=26..30}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=31..35}] AnimationRotationX 100
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=36..40}] AnimationRotationX 100
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=6..10}] AnimationRotationX 100
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=11..15}] AnimationRotationX 100
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=16..20}] AnimationRotationX 100
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=21..25}] AnimationRotationX 100
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=26..30}] AnimationRotationX 100
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=31..35}] AnimationRotationX 100
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0