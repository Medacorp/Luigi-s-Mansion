scoreboard players add @s AnimationProgress 1
execute if score #mirrored Selected matches 1 at @s run teleport @s[tag=!shrunk] ^ ^ ^-0.2
execute if score #mirrored Selected matches 1 at @s run teleport @s[tag=shrunk] ^ ^ ^-0.1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 700
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1200
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -200
execute if entity @s[scores={AnimationProgress=1..3}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=4..6}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 40
execute if entity @s[scores={AnimationProgress=7..9}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 40
scoreboard players set @s[scores={AnimationProgress=15..}] AnimationProgress 0