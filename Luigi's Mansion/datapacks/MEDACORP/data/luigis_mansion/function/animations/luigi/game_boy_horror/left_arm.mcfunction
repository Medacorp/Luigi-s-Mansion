scoreboard players add @s AnimationProgress 1
execute unless score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -500
execute if score #mirrored Selected matches 1 run scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY 100
execute if entity @s[scores={AnimationProgress=25..26}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=27..28}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=41..42}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=43..44}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=1..4}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=5..8}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=9..12}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=13..16}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=25..26}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=27..28}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=1..6}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationY 50
execute if entity @s[scores={AnimationProgress=11..16}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationY 50
scoreboard players set @s[scores={AnimationProgress=50}] AnimationProgress 0