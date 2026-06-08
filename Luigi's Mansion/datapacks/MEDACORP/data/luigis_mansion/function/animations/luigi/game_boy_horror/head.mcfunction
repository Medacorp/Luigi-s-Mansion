scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
scoreboard players add @s[scores={AnimationProgress=1..8}] AnimationRotationX 2
scoreboard players remove @s[scores={AnimationProgress=9..16}] AnimationRotationX 2
scoreboard players add @s[scores={AnimationProgress=19..26}] AnimationRotationX 1
scoreboard players remove @s[scores={AnimationProgress=27..34}] AnimationRotationX 1
scoreboard players add @s[scores={AnimationProgress=35..42}] AnimationRotationX 1
scoreboard players remove @s[scores={AnimationProgress=43..50}] AnimationRotationX 1
scoreboard players set @s[scores={AnimationProgress=50}] AnimationProgress 0