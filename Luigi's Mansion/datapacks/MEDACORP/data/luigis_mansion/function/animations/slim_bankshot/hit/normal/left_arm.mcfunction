scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -300
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationZ 350
execute if entity @s[scores={AnimationProgress=1..9}] run scoreboard players remove @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=10..18}] run scoreboard players add @s AnimationRotationX 50
execute if entity @s[scores={AnimationProgress=1..4}] run scoreboard players add @s AnimationRotationZ 120
execute if entity @s[scores={AnimationProgress=5..8}] run scoreboard players remove @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=11..14}] run scoreboard players add @s AnimationRotationZ 40
execute if entity @s[scores={AnimationProgress=15..18}] run scoreboard players remove @s AnimationRotationZ 120
scoreboard players set @s[scores={AnimationProgress=18..}] AnimationProgress 0