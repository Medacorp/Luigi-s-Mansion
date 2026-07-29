scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=11}] ~ ~0.2 ~
teleport @s[scores={AnimationProgress=12}] ~ ~0.4 ~
teleport @s[scores={AnimationProgress=13}] ~ ~0.6 ~
teleport @s[scores={AnimationProgress=14}] ~ ~0.8 ~
teleport @s[scores={AnimationProgress=15..}] ~ ~1 ~
data modify entity @s[scores={AnimationProgress=1}] transformation.scale set value [1.0f,1.0f,1.0f]
data modify entity @s[scores={AnimationProgress=2}] transformation.scale set value [0.92f,1.0f,0.92f]
data modify entity @s[scores={AnimationProgress=3}] transformation.scale set value [0.83f,1.0f,0.83f]
data modify entity @s[scores={AnimationProgress=4}] transformation.scale set value [0.75f,1.0f,0.75f]
data modify entity @s[scores={AnimationProgress=5}] transformation.scale set value [0.67f,1.0f,0.67f]
data modify entity @s[scores={AnimationProgress=6}] transformation.scale set value [0.58f,1.0f,0.58f]
data modify entity @s[scores={AnimationProgress=7}] transformation.scale set value [0.5f,1.0f,0.5f]
data modify entity @s[scores={AnimationProgress=8}] transformation.scale set value [0.42f,1.0f,0.42f]
data modify entity @s[scores={AnimationProgress=9}] transformation.scale set value [0.33f,1.0f,0.33f]
data modify entity @s[scores={AnimationProgress=10}] transformation.scale set value [0.25f,1.0f,0.25f]
scoreboard players set @s[scores={AnimationProgress=20}] AnimationProgress 0