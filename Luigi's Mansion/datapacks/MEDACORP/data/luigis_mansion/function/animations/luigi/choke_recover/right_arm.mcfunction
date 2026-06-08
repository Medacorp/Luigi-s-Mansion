scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX 300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -1800
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -800
scoreboard players set @s[scores={AnimationProgress=1},tag=flipped_gravity] AnimationRotationZ 1000
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=3..4}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=6..7}] run scoreboard players remove @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=8..9}] run scoreboard players add @s AnimationRotationX 100
execute if entity @s[scores={AnimationProgress=11..13}] run scoreboard players remove @s AnimationRotationX 80
execute if entity @s[scores={AnimationProgress=11..20}] run scoreboard players add @s AnimationRotationY 180
execute if entity @s[scores={AnimationProgress=11..15}] run scoreboard players add @s AnimationRotationZ 160
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0