scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -900
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationY -300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ -900
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players remove @s AnimationRotationX 30
execute if entity @s[scores={AnimationProgress=19..20}] run scoreboard players add @s AnimationRotationX 150
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationY 30
execute if entity @s[scores={AnimationProgress=1..10}] run scoreboard players add @s AnimationRotationZ 90
execute if entity @s[scores={AnimationProgress=11..12}] run scoreboard players remove @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=13..16}] run scoreboard players add @s AnimationRotationZ 20
execute if entity @s[scores={AnimationProgress=17..18}] run scoreboard players remove @s AnimationRotationZ 20
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0