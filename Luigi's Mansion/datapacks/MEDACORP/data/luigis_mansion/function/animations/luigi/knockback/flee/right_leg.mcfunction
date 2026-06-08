scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=11..13}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=14..19}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=20..25}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=26..31}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=32..37}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=38..43}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=44..49}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=50..55}] unless score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=56..58}] unless score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=11..13}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=14..19}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=20..25}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=26..31}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=32..37}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=38..43}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=44..49}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=50..55}] if score #mirrored Selected matches 1 run scoreboard players add @s AnimationRotationX 90
execute if entity @s[scores={AnimationProgress=56..58}] if score #mirrored Selected matches 1 run scoreboard players remove @s AnimationRotationX 90
scoreboard players set @s[scores={AnimationProgress=60..}] AnimationProgress 0