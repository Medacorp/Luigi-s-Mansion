scoreboard players add @s AnimationProgress 1
teleport @s[scores={AnimationProgress=1}] ^ ^ ^ ~18 ~
teleport @s[scores={AnimationProgress=2}] ^ ^ ^ ~36 ~
teleport @s[scores={AnimationProgress=3}] ^ ^ ^ ~54 ~
teleport @s[scores={AnimationProgress=4}] ^ ^ ^ ~72 ~
teleport @s[scores={AnimationProgress=5}] ^ ^ ^ ~90 ~
teleport @s[scores={AnimationProgress=6}] ^ ^ ^ ~108 ~
teleport @s[scores={AnimationProgress=7}] ^ ^ ^ ~126 ~
teleport @s[scores={AnimationProgress=8}] ^ ^ ^ ~144 ~
teleport @s[scores={AnimationProgress=9}] ^ ^ ^ ~162 ~
teleport @s[scores={AnimationProgress=10}] ^ ^ ^ ~180 ~
teleport @s[scores={AnimationProgress=11}] ^ ^ ^ ~198 ~
teleport @s[scores={AnimationProgress=12}] ^ ^ ^ ~216 ~
teleport @s[scores={AnimationProgress=13}] ^ ^ ^ ~234 ~
teleport @s[scores={AnimationProgress=14}] ^ ^ ^ ~252 ~
teleport @s[scores={AnimationProgress=15}] ^ ^ ^ ~270 ~
teleport @s[scores={AnimationProgress=16}] ^ ^ ^ ~288 ~
teleport @s[scores={AnimationProgress=17}] ^ ^ ^ ~306 ~
teleport @s[scores={AnimationProgress=18}] ^ ^ ^ ~324 ~
teleport @s[scores={AnimationProgress=19}] ^ ^ ^ ~342 ~
data merge entity @s[scores={AnimationProgress=1}] {Pose:{Head:[0.0f,0.0f,0.01f]}}
execute store result score #temp Time run data get entity @s Pose.Head[0]
execute if entity @s[scores={AnimationProgress=1..5}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=6..10}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
execute if entity @s[scores={AnimationProgress=11..15}] store result entity @s Pose.Head[0] float 1 run scoreboard players remove #temp Time 3
execute if entity @s[scores={AnimationProgress=16..20}] store result entity @s Pose.Head[0] float 1 run scoreboard players add #temp Time 3
scoreboard players reset #temp Time
scoreboard players set @s[scores={AnimationProgress=20..}] AnimationProgress 0