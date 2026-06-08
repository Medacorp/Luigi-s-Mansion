teleport @s ~ ~-0.35 ~ ~ ~
scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 400
scoreboard players set @s[scores={AnimationProgress=31}] AnimationRotationX -400
scoreboard players set @s[scores={AnimationProgress=31}] AnimationRotationY -200
execute if entity @s[scores={AnimationProgress=1..3}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=4..9}] run scoreboard players add @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=10..12}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationY 20
execute if entity @s[scores={AnimationProgress=21..30}] run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=31..38}] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=39..44}] run scoreboard players remove @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=47..52}] run scoreboard players add @s AnimationRotationX 2
execute if entity @s[scores={AnimationProgress=53..60}] run scoreboard players remove @s AnimationRotationX 2
scoreboard players set @s[scores={AnimationProgress=60}] AnimationProgress 30