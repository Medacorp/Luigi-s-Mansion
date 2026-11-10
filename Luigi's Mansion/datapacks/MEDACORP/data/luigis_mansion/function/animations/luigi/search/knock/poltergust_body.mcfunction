scoreboard players add @s AnimationProgress 1
execute at @s run teleport @s[tag=!shrunk] ^ ^ ^-0.1
execute at @s run teleport @s[tag=shrunk] ^ ^ ^-0.05
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0