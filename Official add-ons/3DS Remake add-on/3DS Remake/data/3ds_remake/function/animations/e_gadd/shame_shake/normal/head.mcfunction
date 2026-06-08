scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=25}] AnimationRotationX 400
execute if entity @s[scores={AnimationProgress=1..2}] run scoreboard players add @s AnimationRotationY 160
execute if entity @s[scores={AnimationProgress=3..6}] run scoreboard players remove @s AnimationRotationY 160
execute if entity @s[scores={AnimationProgress=7..10}] run scoreboard players add @s AnimationRotationY 160
execute if entity @s[scores={AnimationProgress=11..14}] run scoreboard players remove @s AnimationRotationY 160
execute if entity @s[scores={AnimationProgress=15..16}] run scoreboard players add @s AnimationRotationY 160
execute if entity @s[scores={AnimationProgress=16..24}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=27..36}] run scoreboard players add @s AnimationRotationX 10
execute if entity @s[scores={AnimationProgress=37..48}] run scoreboard players remove @s AnimationRotationX 10
scoreboard players set @s[scores={AnimationProgress=48}] AnimationProgress 24