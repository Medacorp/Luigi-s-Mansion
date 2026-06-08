scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -300
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -100
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=25..26}] AnimationRotationX 30
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=27..28}] AnimationRotationX 30
execute if score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=41..42}] AnimationRotationX 30
execute if score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=43..44}] AnimationRotationX 30
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..4}] AnimationRotationX 80
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=5..8}] AnimationRotationX 30
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=9..12}] AnimationRotationX 30
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=13..16}] AnimationRotationX 80
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=25..26}] AnimationRotationX 10
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=27..28}] AnimationRotationX 10
execute unless score #mirrored Selected matches 1 run scoreboard players remove @s[scores={AnimationProgress=1..6}] AnimationRotationY 50
execute unless score #mirrored Selected matches 1 run scoreboard players add @s[scores={AnimationProgress=11..16}] AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=50}] AnimationProgress 0