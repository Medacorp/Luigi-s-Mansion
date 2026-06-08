scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=1..8}] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=9..16}] run scoreboard players remove @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=19..26}] run scoreboard players add @s AnimationRotationX 1
execute if entity @s[scores={AnimationProgress=27..34}] run scoreboard players remove @s AnimationRotationX 1
execute if entity @s[scores={AnimationProgress=35..42}] run scoreboard players add @s AnimationRotationX 1
execute if entity @s[scores={AnimationProgress=43..50}] run scoreboard players remove @s AnimationRotationX 1
scoreboard players set @s[scores={AnimationProgress=50}] AnimationProgress 0