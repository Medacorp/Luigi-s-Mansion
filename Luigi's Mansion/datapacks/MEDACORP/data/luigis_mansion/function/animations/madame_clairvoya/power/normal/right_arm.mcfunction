scoreboard players add @s AnimationProgress 1
scoreboard players set @s[scores={AnimationProgress=1}] AnimationRotationX -1000
scoreboard players add @s[scores={AnimationProgress=1..10}] AnimationRotationX 20
scoreboard players remove @s[scores={AnimationProgress=11..30}] AnimationRotationX 20
scoreboard players add @s[scores={AnimationProgress=31..40}] AnimationRotationX 20
scoreboard players set @s[scores={AnimationProgress=40}] AnimationProgress 0
execute store result entity @s Rotation[1] float 0.1 run scoreboard players get @s AnimationRotationX
execute at @s positioned ~ ~1.5 ~ run particle minecraft:dust{color:16711935,scale:1f} ^ ^-0.75 ^ 0 0 0 0 1